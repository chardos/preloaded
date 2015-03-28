class ChargesController < ApplicationController
  def new
    @amount = amount
    @amount_in_cents = @amount * 100
  end

  def create
    # Amount in cents
    @amount = amount
    @amount_in_cents = @amount * 100

    customer = Stripe::Customer.create(
        :email => 'example@stripe.com',
        :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount_in_cents,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

  def amount
    value = params[:value].to_i
    value > 0 ? value : 500
  end
end
