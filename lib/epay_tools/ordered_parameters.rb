class EpayTools::OrderedParameters
  ORDERED_PARAMETERS = %w[
    merchantnumber accepturl callbackurl orderid
    amount currency ownreceipt windowstate
    instantcapture paymentcollection lockpaymentcollection
    subscription
  ].freeze
end
