class UsersController < ApplicationController

  def show
  	@user = User.find(params.require(:id).permit(:full_name))
  end

  def index

  end


  def home
  end

end
