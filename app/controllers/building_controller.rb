class BuildingController < ApplicationController
  def index
    page = params[:page] || 1
    @q = Building.active.ransack(params[:q])
    @buildings = @q.result.paginate(:page => page, :per_page => 20)
  end

  def create
    building = Building.new(building_params)
    building.save! if building.valid?
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
    building = Building.find(params['id'].to_i)
    if building.present?
      building.is_deleted = true
      building.save
    end
    respond_to do |format|
      format.json  { render json: {deleted: "success"} , status: 200 }
    end
  end

  private
  def building_params
    params.require(:building).permit(:name, :building_type_id, :address, :built_on, :building_status, :num_floors, :payment_plan_id)
  end
end