nested_bookcase = {
	book_shelf_1: {
		books: [{'acupuncture for dummmies' => {author: 'Lou Zee'}}, {'moxabustion for dummies'=> { author:'Yang Ming'}}, {'wild herbs'=> {author: 'Helen Lavender'}}],
		things: ['salt lamp', 'frog figurine']

	},
	book_shelf_2: {
		books: [{'bodice riper'=> {author: 'Susan String'}}, {'eligible'=> {author: 'Curtis Sittenfeld'}}],
		things: ['trophy', 'magic eight ball']
	}
}

puts "this is the full nested_bookcase 
	#{nested_bookcase}"

puts " this is a printing of the books on the first book shelf 
	#{nested_bookcase [:book_shelf_1][:books]}"

puts " this is only the first book on the first book shelf 
	#{nested_bookcase [:book_shelf_1][:books][0]}"

puts "this is the author of the second book on the second bookshelf 
	#{nested_bookcase [:book_shelf_2][:books][1]["eligible"][:author]}"

	
