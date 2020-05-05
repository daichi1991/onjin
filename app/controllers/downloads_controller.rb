class DownloadsController < ApplicationController

  before_action :authenticate_user!

  def create
    @sound = Sound.find(params[:sound_id])
    filepath = @sound.sound_file.current_path
    stat = File::stat(filepath)
    send_file(filepath, :filename => @sound.sound_file_identifier, :length => stat.size)
    if @sound.dl?(current_user)
      @sound.update_dl(current_user)
    else
      @sound.new_dl(current_user)
    end
  end

end
