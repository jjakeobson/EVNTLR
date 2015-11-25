class AddColumnToScheduleMessage < ActiveRecord::Migration
  def change
    add_reference :schedule_messages, :user, index: true, foreign_key: true
  end
end
