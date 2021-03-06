class ScheduleMessagesController < ApplicationController
  before_action :set_schedule_message, only: [:show, :edit, :update, :destroy]

  def index
    @schedulemessage = ScheduleMessage.new
    @schedulemessages = ScheduleMessage.all
  end

  def create
    @schedulemessage = ScheduleMessage.new(schedule_message_params)

    Pusher.trigger('schedule', 'new_schedule_message', {
                     avatar: current_user.avatar_url(:thumb),
                     name: current_user.name,
                     message: @schedulemessage.message,
                     timestamp: Time.now.strftime('%I:%M %p')
                   }, socket_id: params[:socket_id])

    respond_to :js
    @schedulemessage.save
  end

  private

  def set_schedule_message
    @schedulemessage = ScheduleMessage.find(params[:id])
  end

  def schedule_message_params
    params.require(:schedule_message).permit(:name, :message, :user_id, :avatar)
  end
end
