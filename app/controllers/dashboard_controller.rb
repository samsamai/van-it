class DashboardController < ApplicationController
  def index
  end

  def show
    binding.pry
    # Charge the Customer instead of the card:
    charge = Stripe::Charge.create(
      :amount => 1000,
      :currency => "aud",
      :customer =>  current_rider.customer_id,
    )
  end

end
