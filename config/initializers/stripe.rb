Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_HJ9DK314jl6DUjpFCKhohAcM'],
  :secret_key      => ENV['sk_test_xmzoIixt4Kje6yLfGx9N1QqN']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]