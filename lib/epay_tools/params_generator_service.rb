class EpayTools::ParamsGeneratorService < ServicePattern::Service
  attr_reader :epay_merchant_number, :epay_md5_key, :params

  def initialize(epay_md5_key:, params:)
    @epay_md5_key = epay_md5_key
    @params = params
  end

  def execute!
    epay_params = {}
    EpayTools::OrderedParameters::ORDERED_PARAMETERS.each do |ordered_parameter|
      epay_params[ordered_parameter] = params.fetch(ordered_parameter)
    end

    epay_hash = Digest::MD5.hexdigest("#{epay_params.values.join}#{epay_md5_key}")
    epay_params_with_hash = epay_params.merge("hash" => epay_hash)

    ServicePattern::Response.new(
      result: {
        epay_params: epay_params,
        epay_hash: epay_hash,
        epay_params_with_hash: epay_params_with_hash
      }
    )
  end
end
