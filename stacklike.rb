#!/home/raj/.rbenv/shims/ruby -w

module Stacklike
	def stack
		@stack ||= []
	end
	
	def add_to_stack(obj)
		stack.push(obj)
	end
	
	def take_from_stack
		stack.pop
	end
end

#class Stack
	#include Stacklike
#end

#s = Stack.new
#s.add_to_stack("One")
#s.add_to_stack("Two")
#s.add_to_stack("Three")

#puts "These are the object currently in stack #{s.stack}"
#taken = s.take_from_stack
#puts "Remove from stack: #{taken}"
#puts "Now the stack is #{s.stack}"


class Suitcase
end


class Cargohold
	include Stacklike
	
	def load_and_report(obj)
		puts "Loading object...#{obj.object_id}"
		add_to_stack(obj)
	end
	
	def unload
		take_from_stack
	end
	
end

ch = Cargohold.new

sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new

ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)

first_unloaded = ch.unload

puts "The first suicase off the plane is #{first_unloaded.object_id}"
		
