class LikesController < ApplicationController


  def create
    if user_signed_in?
      @sound = Sound.find(params[:sound_id])
      unless @sound.iine?(current_user)
        @sound.iine(current_user)
        @sound.reload
        respond_to do |format|
          format.html { redirect_to request.referrer || root_url }
          format.js
        end
      end
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    if user_signed_in?
      @sound = Like.find(params[:id]).sound
      if @sound.iine?(current_user)
        @sound.uniine(current_user)
        @sound.reload
        respond_to do |format|
          format.html { redirect_to request.referrer || root_url }
          format.js
        end
      end
    else
      redirect_to new_user_session_path
    end


  end

end
