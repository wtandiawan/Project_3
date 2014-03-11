class Course < ActiveRecord::Base
  validates :name, presence: true
  validates :semester, presence: true

  has_many :enrollments
  has_many :students, through: :enrollments, class_name: 'User'
  has_many :assignments
end
