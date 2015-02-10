class Greeter
	def greet
		"This is not the greeting you are looking for."
	end

	def quote tag=nil

		quote = {
			:love => [
				"I like intelligent women. When you go out, it shouldn\'t be a staring contest.",
				"You may be a puzzle, but I like the way the parts fit.",
				"....A simple I love you means more than money....",
				"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you.",
				"The cigarettes you light one after another won’t help you forget her."
				],
			:life => [
				"The best is yet to come.",
				"The best revenge is massive success.",
				"The big lesson in life, baby, is never be scared of anyone or anything.",
				"I'm gonna live till I die.",
				"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
				"I would like to be remembered as a man who had a wonderful time living life, a man who had good friends, fine family - and I don't think I could ask for anything more than that, actually.",
				"The best is yet to come and won't that be fine.",
				"Don’t hide your scars. They make you who you are",
				"When lip service to some mysterious deity permits bestiality on Wednesday and absolution on Sunday, cash me out.",
				"You only go around once, but if you play your cards right, once is enough.",
				"That's life,and I can't deny it/Many times I thought of cuttin' out but my heart won't buy it."
				],
			:alcohol => [
				"Alcohol may be man's worst enemy, but the bible says love your enemy.",
				"I feel sorry for people that don't drink, because when they wake up in the morning, that is the best they are going to feel all day-"
			]
		} # end of quote hash

		#if tag is in the quote hash then do this
		if quote[tag]
			[ "<h2>Frank Sinatra said about #{tag}</h2>",
			quote[tag].sample ]
		else
			"Frank said many things. I can tell you some things he said about <b>love</b>, <b>life</b> or <b>alcohol</b>. What would you like to see?"
		end

	end

end


