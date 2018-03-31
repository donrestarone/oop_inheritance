require_relative "multilinguist.rb"



class Quote_collector < Multilinguist

@@quote_list = ["The second child class we're going to define
 represents a person who loves to memorize quotes and then travel the world, 
 unleashing poor translations of them to unsuspecting passers-by", "Each instance of this class should have 
 its own ever-growing collection of favourite quotes.", "It should have the ability to add a new quote to its 
 collection as well as the ability to select a random quote to share in the local language."]

	def add_quote_to_list(quote)
		@@quote_list.push(quote)
	end 

	def read_quotes_at_random
	random_quote = @@quote_list.sample
	return random_quote 
	end 

	def all_quotes 
		return @@quote_list
	end
end 

#testing

collector1 = Quote_collector.new 

collector1.add_quote_to_list("the candle that burns twice as bright lasts half as long")

puts collector1.all_quotes.inspect

puts collector1.read_quotes_at_random.inspect

puts 
puts
puts collector1.all_quotes.inspect

#inherit from Multilinguist class
collector1.travel_to("india")

collector1.say_in_local_language(read_quotes_at_random)



