if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_aJmpDxCM43mlxPc5iAVURpBi Roll Key',
    :secret_key => 'sk_test_jcY5LjMxe1Wls4Ec5MaCxGC6 '
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]