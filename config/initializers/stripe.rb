Rails.configuration.stripe = {
    publishavle_key:  ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key:       ENV['STRIPE_SECRET_KEY']
}

#puts "STRIPE_SECRET_KEY : "+ENV['STRIPE_SECRET_KEY'].to_s
Stripe.api_key = Rails.configuration.stripe[:secret_key]