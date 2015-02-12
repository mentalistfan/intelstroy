class AdminController < ApplicationController
	before_action :authenticate_user!
  layout 'admin'		
  def index
  	@time = Time.now
  end

  def users
  	@users = User.all
  end
end
