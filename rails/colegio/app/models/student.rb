class Student < ActiveRecord::Base
	has_many :enrollments
	has_many :subjects, :through => :enrollments
end
