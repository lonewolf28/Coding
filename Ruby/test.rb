#!/home/raj/.rvm/rubies/ruby-2.3.1/bin/ruby

#3.times { puts "Thank you" }

#[1,2,3].map { |x| p x * x }

#factorial = 1 

#2.upto(5) { |x| p factorial *= x }


#puts "Please enter your name: "
#name = gets()
#p "your name is %s" % name.chomp.to_s()

#puts "Enter number 1 and 2: "
#num1, num2  = gets().chomp.split(',')
#puts "num1 + num 2 is : %s" % (num1.to_i + num2.to_i).to_s


#Miles to kilometers converter

puts "Enter the the no of miles: "

miles = gets.chomp.to_f()

def miles_to_kilo(n)
	(n * 1.60934).round(2)
end

puts "#{miles} miles is equal to #{miles_to_kilo(miles)} kilometers" 


puts "Enter num1 and num2 to perform calculation"
num1, num2 = gets.chomp.split(',').map { |x| x.to_f }

puts "Enter the type of operation [ +, - , /, %, * ]"
result = case gets.chomp()
			when "+"
				num1 + num2
			when "-"
				num2 - num2
			when "/"
				num3 / num3
			when "*"
				num4 * num4
			else
				"Invalid option"
		  end
		  
puts "The result is #{result}"
				
		
				
	
