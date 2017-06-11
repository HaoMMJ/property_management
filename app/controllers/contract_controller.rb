class ContractController < ApplicationController
  def index
    page = params[:page] || 1
    @q = Contract.visible.ransack(params[:q])
    @contracts = @q.result.paginate(:page => page, :per_page => 20)
  end

  def create
    room_id = params["room_id"].to_i
    customer_id = params["customer_id"].to_i
    customer = Customer.find(customer_id)
    room     = Room.find(room_id)
    if customer.present? and room.present?
      progress_id = Room.first.building.payment_plan.progresses.where(step: 1).first.id
      Contract.create(room_id: room_id, customer_id: customer_id, register_on: Date.today, progress_id: progress_id)
      message = "success"
    else
      message = "fail"
    end

    respond_to do |format|
      format.json  { render json: {message: message} , status: 200 }
    end
  end
end
