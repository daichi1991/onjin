class SoundsController < ApplicationController

  def new
    @user = current_user
    @sound = Sound.new
  end

  def confirm
    @user = current_user
    @sound = Sound.new(sound_params)
    return if @sound.valid?
    render :new
  end

  def back
    @sound = Sound.new
    @user = current_user
    render :new
  end

  def create
    if Sound.create!(sound_params)
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

  def sound_params
    params.permit(:title, :type_id, :description, :soundcloud_id, :soundcloud_url, :status, :tag_list)
  end

end
