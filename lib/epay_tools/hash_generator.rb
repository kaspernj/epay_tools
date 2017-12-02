class EpayTools::HashGenerator < ServicePattern::Service
  attr_reader :epay_md5_key, :params

  def initialize(epay_md5_key:, params:)
    @epay_md5_key = epay_md5_key
    @params = params.reject { |key, _value| key.to_s == "hash" }
  end

  def execute!
    ServicePattern::Response.new(result: hash)
  end

private

  def hash
    Digest::MD5.hexdigest("#{params.values.join}#{epay_md5_key}")
  end
end
