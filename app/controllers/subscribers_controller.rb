class SubscribersController < ApplicationController

  before_action :authenticate_user!

  def new
  end

  def update

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    # Stripe.api_key = "sk_test_gApSocp3D1BTrDxSASGvhRNZ"

    token = params[:stripeToken]

    customer = Stripe::Customer.create({
             card: token,
             plan: 'monthly-plan-eur',
             email: current_user.email,
            })

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save

    redirect_to voiceover_path

    # token = params[:stripeToken]
    #
    # customer = Stripe::Customer.create(
    #        card: token,
    #        plan: "monthly-plan-eur",
    #        email: current_user.email
    #
    # )
    #
    # current_user.subscribed = true
    # current_user.stripeid = customer.id
    # current_user.save
    #
    # redirect_to voiceover_path

  end
end
