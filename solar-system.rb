class System 
	@@bodies = []
	def add(name, mass)
		unit = {:name => name, :mass => mass}
		@@bodies.push(unit)
	end 

	def all_bodies
		return @@bodies
	end 

	def total_mass
		mass = 0 
		@@bodies.each do |body_hash| #for each of the hashes in the @@bodies array
			mass += body_hash[:mass]	#within each hash entry, look for the :mass value and add them to mass
		end 
		return mass 
	end 

end 

class Body  
	def initialize(name, mass)
		@name = name 
		@mass = mass
	end 
end 

# class Planet < body 

# end 

# class Star < body

# end 

# class Moon < body 

# end 


system1 = System.new
system1.add("milkyway", 1000)
system1.add("centurion", 1000)

puts system1.all_bodies.inspect

puts system1.total_mass


