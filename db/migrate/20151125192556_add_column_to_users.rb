class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :herefor, :string
    add_column :users, :githublink, :string
    add_column :users, :portfoliolink, :string
  end
end
