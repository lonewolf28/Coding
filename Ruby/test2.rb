#!/home/raj/.rvm/rubies/ruby-2.3.1/bin/ruby

#(1..20).each do |i|
#	if i % 2 != 0 then
#		puts i.to_s
#	end
#end

#puts "Please enter the investment amount: "
#invAmt = gets.chomp.to_f
#puts "Please enter the interest Rate: "
#intRate = gets.chomp.to_f.round(2)


#def interest_calc(amt, rate)
#	final = 0 
#	for i in 1..10 do
#		final += amt * rate
#	end
#	final.round(2)
#end


#puts "The interest for the amount #{invAmt} with the rate #{intRate} for 10 years \
#      is #{interest_calc(invAmt,intRate)}"


puts "Please enter how tall you want your pine tree to be: 1 .. 10"

tree_height = gets.to_i

spaces = tree_height - 1

end_space = tree_height - 1

hashes = 1

while tree_height != 0 do
	
	(1..spaces).each do |x| 
		print(" ")
	end
	
	spaces -= 1
	
	
	(1..hashes).each do |y|
		print("#")
	end
	
	puts()
	
	hashes +=  2
	
	tree_height -= 1
end

(1..end_space).each do |z|
	print(" ")
end

print("#")
	


	
