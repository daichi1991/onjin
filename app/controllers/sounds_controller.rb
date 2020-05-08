class SoundsController < ApplicationController

  def index
    if params[:tag_name]
      @results = Sound.tagged_with("#{params[:tag_name]}")
    end
  end

  def show
    @sound = Sound.includes([:creator, :likes, :downloads ]).joins(creator: :user ).find_by(:sounds => {:id => params[:id]})
  end

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
      redirect_to creator_path(current_user.creator.id)
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
    params.permit(:title, :creator_id, :type_id, :description, :soundcloud_id, :soundcloud_url, :status, :sound_file, :file_name, :tag_list)
  end

end
