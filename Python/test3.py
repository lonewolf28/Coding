#!/home/raj/anaconda3/bin/python


#import random

#while True:
	
	#try:
		#user_input = int( input( "Please enter a number b/w 1 -10: "))
	
	#except ValueError:
		#print ( "Please enter a valid number b/w 1 - 10")
		#continue
	
	#except:
		#print("Unknown user input")
		#continue
		
	
	#if user_input > 10 or user_input < 1:
		#continue
	
	#random_number = random.randint(1,11)
	
	#if user_input == random_number:
		#print ( "You have gussed it right: {}".format(random_number) )
		#break
	#else:
		#print("You have got it wrong please try again")
		#continue
		


string_to_encoded = str( input("Please enter a string you'd like to be encoded: ").rstrip() )


def str_encode(string):
	return ( ord(i) for i in string )


def str_decode(encoded_string):
	for j in encoded_string:
		yield chr(j)

print("The encoded message is: {}".format("".join(str(w) for w in str_encode(string_to_encoded))))

decoded_string = ""

for k in str_decode(str_encode(string_to_encoded)):
	decoded_string += k
	

print("decoded string is: {}".format(decoded_string) )
