class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :task_category
      t.string :task_priority
      t.integer :task_progess
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
