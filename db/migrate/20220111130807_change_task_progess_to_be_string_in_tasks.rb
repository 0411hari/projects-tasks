class ChangeTaskProgessToBeStringInTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :task_progess, :string
  end
end
