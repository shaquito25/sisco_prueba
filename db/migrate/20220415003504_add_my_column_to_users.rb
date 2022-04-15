class AddMyColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :documento, :string
  end
end
