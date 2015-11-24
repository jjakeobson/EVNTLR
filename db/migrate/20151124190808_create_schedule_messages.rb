class CreateScheduleMessages < ActiveRecord::Migration
  def change
    create_table :schedule_messages do |t|

      t.timestamps null: false
    end
  end
end
