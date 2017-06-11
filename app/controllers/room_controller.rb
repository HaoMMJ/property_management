class RoomController < ApplicationController
  def index
    page = params[:page] || 1
    @q = Room.active.ransack(params[:q])
    @rooms = @q.result.paginate(:page => page, :per_page => 20)
  end

  def create
    room = Room.new(room_params)
    room.state = "#{I18n.t('available')}"
    room.save! if room.valid?
    respond_to do |format|
      format.json  { render json: {} , status: 200 }
    end
  end

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

  private
  def room_params
    params.require(:room).permit(:building_id, :room_no, :room_status, :state, :lighting_direction_id, :layout_id, :floor, :space, :available_on, :opened_at, :price)
  end
end
