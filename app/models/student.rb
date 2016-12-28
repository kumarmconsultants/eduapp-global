class Student < ApplicationRecord
	belongs_to :course
	belongs_to :level

	validates :fname, presence: true, length: { minimum: 3 }
	validates :lname, presence: true, length: { minimum: 5 }

	validates :course, presence: true
	validates :level, presence: true
	validates :email, :presence => true, :uniqueness => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	validates :phone, numericality: { only_integer: true }, length: { minimum: 10 }

	def to_s
		"#{fname} #{lname}"
	end
end
