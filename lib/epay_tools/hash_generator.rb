class EpayTools::HashGenerator < ServicePattern::Service
  attr_reader :epay_md5_key, :params

  KEYS_ORDER = %w[txnid orderid amount currency date time txnfee paymenttype cardno hash].freeze

  def initialize(epay_md5_key:, params:)
    @epay_md5_key = epay_md5_key
    @params = params.reject { |key, _value| key.to_s == "hash" }
  end

  def execute!
    ServicePattern::Response.new(result: calculate_hash)
  end

private

  def calculate_hash
    require "digest/md5"
    @_calculate_hash ||= Digest::MD5.hexdigest("#{params.values.join}#{epay_md5_key}")
  end
end
