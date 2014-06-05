class MessagesController < ApplicationController

	# GET /message/new
	def new
		@request = Request.find(params[:request])
		@message = current_user.messages.new
		@user = @request.user
	end

	# POST /message/create
	def create
		@recipient = User.find(params[:user])
		current_user.send_message(@recipient, params[:body], params[:subject])
		flash[:notice] = "Message has been sent!"
		redirect_to :conversations
	end
end