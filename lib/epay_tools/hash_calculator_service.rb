class EpayTools::HashCalculatorService < ServicePattern::Service
  attr_reader :query_parameters, :epay_md5_key

  def initialize(query_parameters:, epay_md5_key:)
    @query_parameters = query_parameters
    @epay_md5_key = epay_md5_key
  end

  def execute!
    ServicePattern::Response.new(
      result: {
        calculated_hash: calculated_hash,
        validated: validated?
      }
    )
  end

private

  def calculated_hash
    @_calculated_hash ||= Digest::MD5.hexdigest("#{parameters_to_use.values.join}#{epay_md5_key}")
  end

  def parameters_to_use
    parameters = {}

    EpayTools::OrderedParameters::ORDERED_PARAMETERS.each do |ordered_parameter|
      parameters[ordered_parameter] = query_parameters.fetch(ordered_parameter)
    end

    parameters
  end

  def validated?
    return false unless query_parameters.key?("hash")
    return true if calculated_hash == query_parameters.fetch("hash")
    false
  end
end
