class SoundTypesController < ApplicationController
  def new
  end

  def create
    if SoundType.create!(sound_types_params)
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

  def sound_types_params
    params.permit(:type_name)
  end

end
