class CreatorsController < ApplicationController
  def new
  end

  def zipedit
    params.require(:creator).permit(:first_name, :first_name_kana, :last_name, :last_name_kana, :birthday, :phone_number,:post_code, :prefecture_name, :address_city, :address_street, :address_building)
  end

end
