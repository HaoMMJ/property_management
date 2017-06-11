class MiniSearchController < ApplicationController
  def room
    page = params[:page] || 1
    @q = Room.active.available.ransack(params[:q])
    @rooms = @q.result.paginate(:page => page, :per_page => 20)

    render layout: "mini_search"
  end

  def customer
    page = params[:page] || 1
    @q = Customer.active.ransack(params[:q])
    @customers = @q.result.paginate(:page => page, :per_page => 20)

    render layout: "mini_search"
  end
end