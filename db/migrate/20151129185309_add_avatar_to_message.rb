class AddAvatarToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :avatar, :string
  end
end
