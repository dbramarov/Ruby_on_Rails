class MessagesController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  	@messages = Message.all 
  	@comments = Comment.all
  end
  def new
  	user = User.find(session[:user_id])
  	@message = Message.create(message: params[:message], user: user)
  	if @message.valid?
  		redirect_to '/messages'
  	else 
  		flash[:errors] = @message.errors.full_messages
  		redirect_to :back
  	end
  end
  def comment
  	user = User.find(session[:user_id])
  	message = Message.find(params[:id])
  	@comment = Comment.create(comment: params[:comment], user: user, message: message)
  	if @comment.valid?
  		redirect_to '/messages'
  	else 
  		flash[:CommErrors] = @comment.errors.full_messages
  		redirect_to :back
  	end
  end
end
