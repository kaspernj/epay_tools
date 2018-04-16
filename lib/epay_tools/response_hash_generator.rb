class EpayTools::ResponseHashGenerator < ServicePattern::Service
  attr_reader :epay_md5_key, :params

  KEYS_ORDER = %w[txnid orderid amount currency date time txnfee paymenttype cardno hash].freeze

  def initialize(epay_md5_key:, params:)
    @epay_md5_key = epay_md5_key
    @params = params.reject { |key, _value| key.to_s == "hash" }
  end

  def execute!
    ServicePattern::Response.new(result: EpayTools::HashGenerator.execute!(epay_md5_key: epay_md5_key, params: ordered_params).result)
  end

private

  def ordered_params
    result = {}
    KEYS_ORDER.each do |key|
      result[key] = params.delete(key) if params.key?(key)
    end

    result.merge(params)
  end
end
