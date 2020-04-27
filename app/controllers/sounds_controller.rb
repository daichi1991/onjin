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

  def download
     @sound = Sound.find(params[:id])
     # ref: https://github.com/carrierwaveuploader/carrierwave#activerecord
     filepath = @sound.sound_file.current_path
     stat = File::stat(filepath)
     send_file(filepath, :filename => @sound.sound_file_identifier, :length => stat.size)
  end


  private

  def sound_params
    params.permit(:title, :type_id, :description, :soundcloud_id, :soundcloud_url, :status, :sound_file, :file_name, :tag_list)
  end

end
