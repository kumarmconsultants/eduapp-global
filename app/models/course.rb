class Course < ApplicationRecord
	has_many :students
	has_many :levels, :through => :students

	validates :coursename, presence: true
end
