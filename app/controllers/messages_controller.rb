class MessagesController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    redirect_to chat_path
  end
end
