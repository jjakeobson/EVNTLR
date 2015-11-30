class AddOneLinerToUser < ActiveRecord::Migration
  def change
    add_column :users, :oneliner, :string
  end
end
