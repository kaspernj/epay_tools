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
    @_calculate_hash ||= Digest::MD5.hexdigest("#{params_values.join}#{epay_md5_key}")
  end

  def params_values
    unless @_params_values
      @_params_values = {}
      KEYS_ORDER.each do |key|
        @_params_values[key] = params.delete(key) if params.key?(key)
      end

      @_params_values.merge!(params)
    end

    @_params_values.values
  end
end
