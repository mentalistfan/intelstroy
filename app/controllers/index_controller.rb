class IndexController < ApplicationController
  def index
	@post = Main.find(1)
  end
end
