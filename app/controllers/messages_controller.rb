class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)

    Pusher.trigger('chat', 'new_message', {
                     avatar: current_user.avatar_url(:thumb),
                     name: current_user.name,
                     message: @message.message,
                     timestamp: Time.now.strftime('%I:%M %p')
                   }, socket_id: params[:socket_id])

    respond_to :js
    @message.save unless @message.message.empty?
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:name, :message, :user_id, :avatar)
  end
end
