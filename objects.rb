#  objects.rb
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
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

obj = Object.new

def obj.talk
	puts "I'm this object and i can talk"
end


def obj.c2f(c)
	c * 9.0 / 5 + 32
end

obj.talk
p obj.c2f(100)
	
ticket = Object.new


def ticket.date
	"01/02/03"
end

def ticket.venue
	"Town Hall"
end

def ticket.event
	"Author Reading"
end

def ticket.performer
	"Mark Twain"
end

def ticket.seat
	"Second Balcony, row J, seat 12"
end

def ticket.cost
	5.50
end

puts "This ticket is for the #{ticket.event}, at #{ticket.venue}." +
	 "The performer is #{ticket.performer}." +
	 "The seat no is #{ticket.seat}, " +
	 "and it costs $#{"%.2f." % ticket.cost}"
