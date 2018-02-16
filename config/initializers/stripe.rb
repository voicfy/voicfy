#Stripe Test Credentials
# Rails.configuration.stripe = {
#     publishable_key: ENV['pk_test_m9wYiMkU44wKdfTzjBvyjUp6'],
#     secret_key:      ENV['sk_test_gApSocp3D1BTrDxSASGvhRNZ']
# }
#
# Stripe.api_key = Rails.configuration.stripe[:secret_key]
# STRIPE_PUBLIC_KEY = Rails.configuration.stripe[:publishable_key]


Rails.configuration.stripe = {
    :publishable_key => Rails.application.secrets.pk_test_m9wYiMkU44wKdfTzjBvyjUp6,
    :secret_key      => Rails.application.secrets.sk_test_gApSocp3D1BTrDxSASGvhRNZ
}

Stripe.api_key = Rails.application.secrets.sk_test_gApSocp3D1BTrDxSASGvhRNZ

# # Stripe Production Credentials
# Rails.configuration.stripe = {
#     :publishable_key => Rails.application.secrets.pk_live_IDPSjpSLT8Aul2NYChV5jDVW,
#     :secret_key      => Rails.application.secrets.sk_live_ZX98nrgPplmLHzLmYSNrn1Yv
# }
#
# Stripe.api_key = Rails.application.secrets.sk_live_ZX98nrgPplmLHzLmYSNrn1Yv