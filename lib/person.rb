# your code goes here
class Person 

	attr_reader :name, :happiness
	attr_accessor :bank_account, :hygiene

	def initialize(name)
		@name = name 
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(happiness)
		if happiness > 10 
			@happiness = 10 
		elsif happiness < 0
			@happiness = 0
		else 
			@happiness = happiness
		end
	end

	def hygiene=(hygiene)
		if hygiene > 10 
			@hygiene = 10 
		elsif hygiene < 0
			@hygiene = 0
		else 
			@hygiene = hygiene
		end
	end

	def clean?
		@hygiene > 7
	end

	def happy?
		@happiness > 7 
	end

	def get_paid(salary)
		@bank_account += salary 
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene=(self.hygiene+4)
		# @hygiene = [self.hygiene+4, 10].min
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end


	def work_out
		self.hygiene=(self.hygiene-3)
		# @hygiene = [self.hygiene-3, 0].max
		self.happiness=(self.happiness+2)
		# @happiness = [self.happiness+2, 10].min
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness=(self.happiness+3)
		# self.happiness = [self.happiness+3, 10].min 
		friend.happiness=(friend.happiness+3)
		# friend.happiness = [friend.happiness+3, 10].min
		return "Hi #{friend.name}! It's #{self.name}. How are you?" 
	end

	def start_conversation(friend, topic)
		if topic == 'politics'
			self.happiness=(self.happiness-2)
			# self.happiness = [self.happiness - 2, 0].max 
			friend.happiness=(friend.happiness-2)
			# friend.happiness = [friend.happiness - 2,0].max 
			return "blah blah partisan blah lobbyist"
		elsif topic == 'weather'
			self.happiness=(self.happiness+1)
			friend.happiness=(friend.happiness+1)
			# self.happiness = [self.happiness+1,10].min 
			# friend.happiness = [friend.happiness+1,10].min 
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end
			

end