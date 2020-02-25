class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.float :duration
      t.boolean :selected

      t.timestamps
    end
  end
end
