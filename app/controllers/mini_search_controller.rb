class MiniSearchController < ApplicationController
  def room
    page = params[:page] || 1
    @q = Room.active.ransack(params[:q])
    @rooms = @q.result.paginate(:page => page, :per_page => 20)

    render layout: "mini_search"
  end
end