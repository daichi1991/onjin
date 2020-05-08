class ApplicationController < ActionController::Base


  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_search

  protected

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password, :password_confirmation, :remember_me])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :remember_me])
    end

    def after_sign_in_path_for(resource)
      user_path(resource.id)
    end

    def set_search
      @q = Sound.joins({:creator => :user}).ransack(params[:q])
      @sound_types = SoundType.all
      @results = @q.result(distinct: true)
    end

end
