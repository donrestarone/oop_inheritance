#this class should be able to accept a list of numbers and return a sentence stating the sum of the numbers
#Make use of the inherited Multilinguist methods to ensure this sentence will always be delivered in the local language

require_relative "multilinguist.rb"

list = [1, 2, 3, 4, 5, 6]

class Math_genius < Multilinguist
	
	def add(list_of_numbers)
		counter = 0
		list_of_numbers.each {|number| counter = counter + number}
		say_in_local_language("the total is #{counter}")
	end
end 

me = Math_genius.new 

puts me.add(list)

me.travel_to("india") #multilingust class's travel_to instance method is called by the instance of math genuis which inherits multilingust.

puts me.add(list)

me.travel_to("india")

puts me.add(list)