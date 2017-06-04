class CustomerController < ApplicationController
  def index
    page = params[:page] || 1
    @customers = Customer.paginate(:page => page, :per_page => 1)
  end

  def create
    customer = Customer.new(customer_params)
    customer.save! if customer.valid?
    respond_to do |format|
      format.json  { render json: {} , status: 200 }
    end
  end

  def delete
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :birthday, :birth_place, :id_card, :issued_by, :issued_on, :tel, :address, :email)
  end
end
