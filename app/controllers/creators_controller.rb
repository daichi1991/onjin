class CreatorsController < ApplicationController

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
      redirect_to creator_path(current_user.creator.id)
      flash[:notice] = "登録が完了しました！"
    else
      render :new
    end
  end

  def edit
    @creator = Creator.find(params[:id])
  end

  def update
    @creator = Creator.find(params[:id])
    @creator.update(creator_params)
    redirect_to creator_path
  end

  def destroy
  end

  def show
    @creator = Creator.find_by(id: params[:id])
    @sounds = Sound.includes([:creator, :likes, :downloads ]).joins(creator: :user ).where(creator_id: @creator.id).page(params[:page]).per(1)
    @likes = Sound.joins(:likes).where(sounds: { creator_id: @creator.id })
    @downloads = Sound.joins(:downloads).where(sounds: { creator_id: @creator.id })
  end

  def price_list
    @creator = Creator.find_by(id: params[:id])
    @price_list = PriceList.find_by(creator_id: params[:id])
  end

private

  def creator_params
    params.require(:creator).permit(:user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :birthday, :phone_number, :postcode, :prefecture_code,:address_city, :address_street, :address_building )
  end

end
