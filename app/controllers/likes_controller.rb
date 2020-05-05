class LikesController < ApplicationController

  before_action :authenticate_user!

  def create
    @sound = Sound.find(params[:sound_id])
    unless @sound.iine?(current_user)
      @sound.iine(current_user)
      @sound.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @sound = Like.find(params[:id]).sound
    if @sound.iine?(current_user)
      @sound.uniine(current_user)
      @sound.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

end
