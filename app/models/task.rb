class Task < ApplicationRecord
  belongs_to :project
  # validates :name, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :task_category, presence: true
  # validates :task_progess, inclusion: {in: ['not-started', 'in-progress','completed']}


  STATUS_OPTIONS = [ ['Not Started', 'not-started'],
                     ['In Progress', 'in-progress'],
                     ['Completed', 'completed']
                   ]

  def button_color
    case task_progess
    when 'not-started'
      'primary'
    when 'in-progress'
      'info'
    when 'completed'
      'success'
    end
  end
end

