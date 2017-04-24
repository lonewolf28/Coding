#!/home/raj/.rbenv/shims/ruby -w

#  attr_accessor.rb
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
#puts "The venue is #{th.venue} on #{th.date} for $#{"%.2f" % th.price}"


class Publication
	attr_accessor :publisher
end


class Magazine < Publication
	attr_accessor :editor
end


mag = Magazine.new
mag.publisher = "Manning"
mag.editor = "David Black"

puts "Mag is published by #{mag.publisher} and edited by #{mag.editor}"


class Person
	def species
		"Homosapeins"
	end
end

class Rubyist < Person
end

raj = Rubyist.new

puts "He's is a #{raj.species}"

