class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :nickname, :string
    add_column :users, :image, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_reference :users, :group, foreign_key: true
  end
end
