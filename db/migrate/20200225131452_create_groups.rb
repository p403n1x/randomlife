class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :image
      t.string :token

      t.timestamps
    end
  end
end
