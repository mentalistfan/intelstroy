class AboutController < ApplicationController
  def index
	@about = Company.find(1)
  end
end
