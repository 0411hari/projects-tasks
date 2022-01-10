class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user
  validates :name, presence: true, :uniqueness => true,
  validates :start_date, presence: true
  validates :end_date, presence: true
end
