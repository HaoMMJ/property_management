class CustomerController < ApplicationController
  def create
    customer = Customer.new(customer_params)
    customer.save! if customer.valid?
    respond_to do |format|
      format.json  { render json: {} , status: 200 }
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :birthday, :birth_place, :id_card, :issued_by, :issued_on, :tel, :address, :email)
  end
end
