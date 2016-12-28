class Level < ApplicationRecord
	has_many :students
	has_many :courses, :through => :students

	validates :leveltype, presence: true
end
