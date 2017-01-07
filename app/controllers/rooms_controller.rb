class RoomsController < ApplicationController
  def show
  if Message.any? == true then
  	@message = Message.find(Message.last.id)
  else
  	@message = Message.all
  end
  
  # @user = User.find(params[:id])
  #  @messages = Massage.where(user_id: @user.id)
  # @messages = @user.messages
  end
end
