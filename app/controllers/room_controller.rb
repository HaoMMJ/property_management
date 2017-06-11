class RoomController < ApplicationController
  def index
    page = params[:page] || 1
    @q = Room.active.ransack(params[:q])
    @rooms = @q.result.paginate(:page => page, :per_page => 20)
  end

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

  def destroy
    room = Room.find(params['id'].to_i)
    if room.present?
      room.is_deleted = true
      room.save
    end
    respond_to do |format|
      format.json  { render json: {deleted: "success"} , status: 200 }
    end
  end

  # private
  # def customer_params
  #   params.require(:customer).permit(:name, :birthday, :birth_place, :id_card, :issued_by, :issued_on, :tel, :address, :email)
  # end
end
