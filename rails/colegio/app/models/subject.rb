class Subject < ActiveRecord::Base
	belongs_to :teacher
	has_many :homeworks
	has_many :enrollments
end
