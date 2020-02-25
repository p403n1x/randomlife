class CreateGroupcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :groupcategories do |t|
      t.references :group, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
