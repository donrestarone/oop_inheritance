class System 
	@@bodies = []
	def add(name, mass) #add celestial body to array 
		unit = {:name => name, :mass => mass}
		@@bodies.push(unit)
	end 

	def all_bodies
		return @@bodies
	end 

	def total_mass #method to add all the mass values in the array
		mass = 0 
		@@bodies.each do |body_hash| #for each of the hashes in the @@bodies array
			mass += body_hash[:mass]	#within each hash entry, look for the :mass value and add them to mass
		end 
		return mass 
	end 

end 

class Body < System
	def initialize(name, mass, day_cycle, year_cycle)
		@name = name 
		@mass = mass 
		@day_cycle = day_cycle
		@year_cycle = year_cycle
	end 
end 

class Planet < Body 
	def initialize(name, mass, day_cycle, year_cycle) 
		super(name, mass)
		@day_cycle = day_cycle
		@year_cycle = year_cycle
	end 

end 

class Star < Body
	def initialize(name, mass, day_cycle, year_cycle, type)
		super(name, mass, day_cycle, year_cycle)
		@type = type
	end 
end 

class Moon < Body 
	def initialize(name, mass, day_cycle, year_cycle, month)
		super(name, mass, day_cycle, year_cycle)
		@month = month 
	end 
end 

#testing
#initialize one system
system1 = System.new

#YOU CAN ADD BODIES TO THE SYSTEM LIKE THIS AS WELL
# system1.add("milkyway", 1000)
# system1.add("centurion", 1000)

puts system1.all_bodies.inspect

puts system1.total_mass

#initialize one body 
body1 = Body.new("our planets", 50, 0, 0)
#add a few planets to the body 
body1.add("some body", 12)
body1.add("second body", 50)
body1.add("milkyway", 1000)
body1.add("centurion", 1000)

#inspect the system with all the bodies within it 
puts system1.all_bodies.inspect
#inspect the entire mass of all the bodies within the system
puts system1.total_mass

puts 
puts 
puts body1.inspect

#testing planet class 
earth = Planet.new("earth", 5, 24, 365)

puts system1.all_bodies.inspect

puts body1.inspect

puts earth.inspect

#test star class 
star1 = Star.new("some star", 40, 22, 55, "a big one")
#test moon class 
moon1 = Moon.new("some moon or other", 50, 30, 66, 60)


puts system1.all_bodies.inspect

puts body1.inspect


