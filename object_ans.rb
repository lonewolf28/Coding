#!/home/raj/.rbenv/shims/ruby -w


class C
end

class D < C
end

#puts D.superclass
#puts D.superclass.superclass

#c = Class.new do
#		def say_hello
#			puts "Hello World"
#		end
#	end
	
#puts c.new


class Ticket
	attr_reader :venue, :date
	attr_accessor :price
	
	def initialize(venue, date)
		@venue = venue
		@date = date
	end
	
	def Ticket.most_expensive(*tickets)
		tickets.max_by(&:price)
	end
	
end

th = Ticket.new("chennai", "28/11/86")
cc = Ticket.new("Covention Center", "12/11/13")
fg = Ticket.new("Fairgrounds", "13/14/15" )


th.price = 50.00
cc.price = 60.00
fg.price = 75.00

highest = Ticket.most_expensive(th,cc,fg)
puts highest.date


puts "The highest priced ticket is the one in #{highest.venue}"




class Ticker
	VENUES = %w'Convention_Center fairgrounds Town_hall'
	
	attr_accessor :venue, :date
	
	def initialize(venue, date)
		if VENUES.include?(venue) then
			@venue = venue
		else
			raise ArgumentError, "Unknown venue #{venue}"
		end
		@date = date
	end

end

gg = Ticker.new("Town_hall", "11/12/11")

puts gg.venue

