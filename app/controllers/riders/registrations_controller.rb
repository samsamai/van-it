class Riders::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
before_action :configure_account_update_params, only: [:update]

  # POST /resource
  def create
    super
    stripe_token = params[:stripe_token]

    # Create a Customer:
    customer = Stripe::Customer.create(
      :email => @rider.email,
      :source => stripe_token,
    )

    @rider.customer_id = customer.id

    if @rider.save
      charge = Stripe::Charge.create(
        :amount => 1000,
        :currency => "aud",
        :customer =>  current_rider.customer_id,
      )
    else
      # TODO: show and error
    end
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :stripe_token])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [ :stripe_token])
  end
end