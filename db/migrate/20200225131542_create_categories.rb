class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :image
      t.string :type

      t.timestamps
    end
  end
end
