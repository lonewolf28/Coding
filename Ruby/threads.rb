#!/home/raj/.rbenv/shims/ruby

def readfiles(filenames)
	threads = filenames.map do |f|
		Thread.new { File.read(f) }
	end
	threads.map { |t| t.value }
end



lister = %w(file1.txt file2.txt)

#puts readfiles(lister)


f = Fiber.new do |msg|
	puts "caller said : #{msg}"
	message2 = Fiber.yield("Hello")
	puts "caller said: #{message2}"
	"Fine"
	end

#response = f.resume("Hello")

#puts "Fiber said: #{response}"

#response2 = f.resume("How are you ?")

#puts "Fiber said: #{response2}"
	

def fibb_gen(x0,y0)
	Fiber.new do
		x,y = x0, y0
		loop do
			Fiber.yield y
			x,y = y, x + y
		end
	end
end

def norm_Fib(x0, y0)
	x, y = x0, y0
	loop do
		yield y
		x, y = y, x + y
	end
end



g = fibb_gen(1,0)

#11.times { print g.resume, " " 

class FibonnacciGene
	def initialize
		@x, @y = 0, 1
		@fiber = Fiber.new do
			loop do
				@x, @y = @y, @x + @y
				Fiber.yield @y
			end
		end
	end
	
	
	def next
		@fiber.resume
	end
	
	def each
		loop { yield self.next }
	end

	def rewind
		@x, @y = 0, 1
	end
end


#g = FibonnacciGene.new

#10.times { print g.next, " "}
#puts ""
#g.rewind

#10.times { print g.next, " "}



#g.each do |x| 
	#break if x >= 100
	#puts x
#end


class Generators
	def initialize(enumerables)
		@enumerable = enumerables
		create_fiber
	end
	
	
	def next
		@fiber.resume
	end
	
	def rewind
		create_fiber
	end
	
	
	private
	def create_fiber
		@fiber = Fiber.new do
			@enumerable.each do |x|
				Fiber.yield x
			end
			raise StopIteration
		end
	end

end

g = Generators.new(1..10)

loop { print g.next, " " }
g.rewind
puts ""
loop { print g.next, " " }




















