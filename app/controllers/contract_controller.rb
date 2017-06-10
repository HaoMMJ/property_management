class ContractController < ApplicationController
  def index
    page = params[:page] || 1
    @q = Contract.visible.ransack(params[:q])
    @contracts = @q.result.paginate(:page => page, :per_page => 20)
  end
end
