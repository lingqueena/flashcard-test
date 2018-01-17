class Subject < ApplicationRecord
	has_many :hashtag
	has_many :students, through: :student_subjects
end
