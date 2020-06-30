class PriceListsController < ApplicationController

  def new
    @creator = Creator.find_by(id: current_user.creator.id)
    @price_list = PriceList.new
  end

  def create
    if PriceList.create!(price_list_params)
      redirect_to price_list_creator_path(current_user.creator.id)
      flash[:notice] = "登録が完了しました！"
    else
      render :new
    end
  end

  def price_list_params
    params.permit(:creator_id, :description)
  end

end
