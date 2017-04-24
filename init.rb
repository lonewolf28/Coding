#!/home/raj/.rbenv/shims/ruby -w

#  init.rb
#  
#  Copyright 2017 Unknown <raj@blitz>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  


class Ticket
	
	def initialize(venue,date)
		@venue = venue
		@date = date
	end
	
	def price=(amount)
			@price = amount
	end
	
	def venue
		@venue
	end
	
	def date
		@date
	end
	
	def price
		@price
	end
	
end

th = Ticket.new("Rogers center", "11/28/86")

#cc = Ticket.new("Chennai", "11/28/86")

th.price = 50.00 

#puts "The first is for a #{th.venue} on #{th.date} and the price is $#{"%.2f" % th.price}"
#puts "The second is for the #{cc.venue} on #{cc.date}"

class TravelAgentSession
	def year=(y)
		@year = y.to_i
		if @year < 100
			@year = @year + 2000
			puts @year
		end
	end
end

tk = TravelAgentSession.new
tk.year = 17

