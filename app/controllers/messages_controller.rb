class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    Pusher.trigger('chat', 'new_message', {
      name: @message.name,
      message: @message.message
    }, {
    socket_id: params[:socket_id]
    })

    respond_to :js
  end
end
