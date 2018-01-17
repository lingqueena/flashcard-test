	
	#create!d user and student
	user1 = User.create!(username: "queena", password: "1234", email: "queena@gmail.com", full_name: "queena ling")
	student1 = Student.create!(school: "ABC school", grade: "grade 1")
	student1.user = user1

	user2 = User.create!(username: "carmen", password: "1234", email: "carmen@gmail.com", full_name: "carmen yeung")
	student2 = Student.create!(school: "ABC school", grade: "grade 1")
	student2.user = user2

	#create!d subjects
	subject1 = Subject.create!(name: "English")
	subject2 = Subject.create!(name: "Maths")

	#create!d hashtags with subject_id
	Hashtag.create!(title: "grammar", subject: subject1)
	Hashtag.create!(title: "geometry", subject: subject2)

	#create!d decks with hashtag_id
	Deck.create!(name: "Nouns", hashtag: Hashtag.first)
	Deck.create!(name: "Angles", hashtag: Hashtag.last)

	#create!d cards with deck_id
	Card.create!(text:"Noun is a place.", deck: Deck.first)
	Card.create!(text:"Noun is an animal.", deck: Deck.first)
	Card.create!(text:"Geometry is hard", deck: Deck.last)
	Card.create!(text:"Geometry is easy", deck: Deck.last)

	#create!d the user action data (useful, useless, etc.)
	DeckStudent.create!(usefulness: true, uselessness: false, bookmark: false, exclude: false, deck: Deck.first, student: student1)
	DeckStudent.create!(usefulness: false, uselessness: false, bookmark: true, exclude: false, deck: Deck.last, student: student1)
	DeckStudent.create!(usefulness: false, uselessness: true, bookmark: false, exclude: false, deck: Deck.first, student: student2)
	DeckStudent.create!(usefulness: false, uselessness: false, bookmark: false, exclude: true, deck: Deck.last, student: student2)

	#create!d student subject relationship, i.e. all students follow all subjects
	StudentSubject.create!(student: student1, subject: subject1)
	StudentSubject.create!(student: student1, subject: subject1)
	StudentSubject.create!(student: student2, subject: subject2)
	StudentSubject.create!(student: student2, subject: subject2)
















