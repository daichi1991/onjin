class CreatorsController < ApplicationController

  before_action :authenticate_user!
  before_action :creator_params, only: [:confirm]

  def new
    @user = current_user
    @creator = Creator.new
  end

  def confirm
    @user = current_user
    @creator = Creator.new(creator_params)
    return if @creator.valid?
    render :new
  end

  def back
    @creator = Creator.new
    @user = current_user
    render :new
  end

  def create
    if Creator.create!(creator_params)
      redirect_to home_index_path
      flash[:notice] = "登録が完了しました！"
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

private

  def creator_params
    params.permit(:user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :birthday, :phone_number, :postcode, :prefecture_code,:address_city, :address_street, :address_building )
  end

end