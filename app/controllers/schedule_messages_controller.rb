class ScheduleMessagesController < ApplicationController
  before_action :set_schedule_message, only: [:show, :edit, :update, :destroy]

  def index
    @schedulemessage = ScheduleMessage.new
  end

  def create
    @schedulemessage = ScheduleMessage.new(schedule_message_params)

    Pusher.trigger('schedule', 'new_schedule_message', {
      name: current_user.name,
      schedulemessage: @schedulemessage.message
    }, {
      socket_id: params[:socket_id]
    })

    respond_to :js
    @schedulemessage.save
  end

  private
  def set_schedule_message
    @schedulemessage = ScheduleMessage.find(params[:id])
  end

  def schedule_message_params
    params.require(:message).permit(:name, :message, :user_id)
  end
end
