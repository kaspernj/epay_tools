require "spec_helper"

describe EpayTools::Calculator do
  let(:epay_parameters) do
    {
      "merchantnumber" => "123123",
      "accepturl" => "http://example.com/epay_accept",
      "callbackurl" => "http://example.com/epay_callback",
      "orderid" => 123,
      "amount" => 10_000,
      "currency" => "DKK",
      "ownreceipt" => "1",
      "windowstate" => "2",
      "instantcapture" => "1",
      "paymentcollection" => "1",
      "lockpaymentcollection" => "1",
      "subscription" => "0",
      "hash" => "edc52b2b2f619551146682061d3a9d0d"
    }
  end
  let(:service) do
    EpayTools::Calculator.new(
      epay_md5_key: "secret-md5-key",
      params: epay_parameters
    )
  end

  describe "#calculated_hash" do
    it "calculates the right hash" do
      expect(service.execute!.result.fetch(:epay_hash)).to eq "edc52b2b2f619551146682061d3a9d0d"
    end
  end
end
