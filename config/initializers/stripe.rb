Rails.configuration.stripe = {
  :publishable_key => ENV["pk_test_51IR9l1Le2UY0wrQHqPeAK6F7uiD4QKbq8wPJwlHuPxhPi6RPXCw8Q7o2mxvu09RapnxL6FYTA4PcVr2WyaXzxrtJ00ZBTkKGaB"],
  :secret_key => ENV["sk_test_51IR9l1Le2UY0wrQHyMGwoYW60jwAGMdnlZWdMr6LeGoSeqrLWBXIQD1u9mEgOzO4X6LNzhjEMqIaAWnZJCdUx7is00XNxUhs5W"]
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]