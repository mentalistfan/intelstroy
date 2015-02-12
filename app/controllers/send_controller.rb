class SendController < ApplicationController
  def index
  	@name = params[:name]
  	@tel = params[:tel]
  	@mess = params[:mess]
  	Feedback.myfeedback(@name, @tel, @mess).deliver
  end
end
