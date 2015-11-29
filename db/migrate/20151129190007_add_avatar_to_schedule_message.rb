class AddAvatarToScheduleMessage < ActiveRecord::Migration
  def change
    add_column :schedule_messages, :avatar, :string
  end
end
