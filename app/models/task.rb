class Task < ApplicationRecord
  belongs_to :project
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :task_category, presence: true
end
