class AboutController < ApplicationController
  def index
	@about = Company.all.first
  end

  def contacts
  	@contacts = Companycontact.all.first
  end
end
