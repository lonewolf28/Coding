#!/home/raj/.rvm/rubies/ruby-2.3.1/bin/ruby

class Ingredients
	attr_accessor :type, :stock, :consumption
	
	
	def initialize
		@ingredients_holder = Array.new
	end

	
	def user_choice
		
		puts <<EOS.lstrip
Enter the following choice
	1) Enter new Ingredients
	2) Print out the shopping list
	3) Exit
EOS
		while line = gets.chomp do
		
			case line.to_i
			when 1
				puts "Adding Ingredients"
				add_ingredients
			when 2
				puts "Printing Ingredients"
				print_ingredients
			when 3
				puts "Exciting..."
				exit
			else
				puts "Invalid input try again"
			end
			
			break
		end
	end
	
	
	
	def add_ingredients
		puts "Enter the type: "
		@ingredients_holder.push(gets.chomp)
		puts "Enter the stock: "
		@ingredients_holder.push(gets.chomp)
		puts "Enter the consumption: "
		@ingredients_holder.push(gets.chomp)
		
		puts "The current Ingredients list are #{@ingredients_holder}"
		user_choice
	end
	
	def print_ingredients
		puts "#{@ingredients_holder}"
		user_choice
		
	end
	
end


ingred = Ingredients.new
ingred.user_choice
ingred.print_ingredients


		
		
