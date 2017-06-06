class BuildingController < ApplicationController
  # def index
  #   page = params[:page] || 1
  #   @q = Customer.active.ransack(params[:q])
  #   @customers = @q.result.paginate(:page => page, :per_page => 20)
  # end

  # def create
  #   customer = Customer.new(customer_params)
  #   customer.save! if customer.valid?
  #   respond_to do |format|
  #     format.json  { render json: {} , status: 200 }
  #   end
  # end

  # def show
  # end

  # def update
  #   binding.pry
  # end

  # def destroy
  #   customer = Customer.find(params['id'].to_i)
  #   if customer.present?
  #     customer.is_deleted = true
  #     customer.save
  #   end
  #   respond_to do |format|
  #     format.json  { render json: {deleted: "success"} , status: 200 }
  #   end

  #   # respond_to do |format|
  #   #   format.html {redirect_to customer_url(id: params[:id])}
  #   #   format.js 
  #   # end
  # end

  # private
  # def customer_params
  #   params.require(:customer).permit(:name, :birthday, :birth_place, :id_card, :issued_by, :issued_on, :tel, :address, :email)
  # end
end