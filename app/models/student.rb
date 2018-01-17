class Student < ApplicationRecord
  belongs_to :user
  has_many :deck_students
  has_many :decks, through: :deck_students
  has_many :subjects, through: :student_subjects


	def get_bookmarked_decks
		bookmark = []
		# self is not mandatory

		#can use "where" here because deck_student acts like a collection of cards
		deck_students.where(bookmark: true).each do |deck_student|
			bookmark << deck_student.deck
		end

		return bookmark
	end

	def decks_excluded
		deck_students.where(exclude: true).each do |deck_student|
			deck_student.deck
		end
	end

end

# array = [1, Student.new, "hey", true]

# length = array.length # 4
# i = 0

# for ( i ; i < length ; i ++ ) {
# 	array[i]
# }

# 1.to_s