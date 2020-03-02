class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.references :group, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
