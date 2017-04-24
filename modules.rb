#!/home/raj/.rbenv/shims/ruby -w


module Myfirstmod
	def hello_world
		puts "Hello Module"
	end
end


class Modtester
	include Myfirstmod
end


class Modtester2 < Modtester
end



mt = Modtester.new
mt.hello_world

mt2 = Modtester2.new
mt2.hello_world
