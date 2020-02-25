class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :progress
      t.datetime :start_date

      t.timestamps
    end
  end
end
