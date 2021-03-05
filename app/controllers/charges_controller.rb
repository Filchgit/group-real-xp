class ChargesController < ApplicationController
  def create
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )

    charge = Stripe:Charge.create(
      :customer => user_id,
      :amount => @amount,
      :description => 'customer',
      :currency => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to dashboard_path
  end
end