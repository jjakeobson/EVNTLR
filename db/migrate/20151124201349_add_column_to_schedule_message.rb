class AddColumnToScheduleMessage < ActiveRecord::Migration
  def change
    add_reference :schedule_messages, :users, index: true, foreign_key: true 
  end
end
