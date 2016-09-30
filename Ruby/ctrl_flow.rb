#!/home/raj/.rbenv/shims/ruby

#puts "enter the first word you can think of: "
#words = %w(apple orange banana)

#response  = words.collect do |w|
	#print w + ">"
	#response = gets.chomp
	#if response.size == 0 then
		#redo
	#end
	#response
#end

#puts "#{response}"


def factorial(n)
	begin
		raise ArgumentError.exception("The arg should be more than one") if n < 1
	rescue => e
		puts "#{e.message}"
		exit
	end
	return 1 if n == 1
	n * factorial(n-1)
end


#puts factorial(0)


def explode
	raise "bam" if rand(10) == 0
end


def risky
	begin
		10.times do
			explode
		end
	rescue TypeError
		puts $!
	end
	"hello"
end


def defuse
	begin
		puts risky
	rescue RuntimeError => e
		puts e.message
	end
end


defuse
