#!/home/raj/anaconda3/bin/python


#num1, num2 = input("Enter num1 and num2:").split(',') 


#print( "The resulf of adding num1 and num2 is {}".format(int(num1) + int(num2)) )


#miles = input( "Enter the miles to be converted to kilometers: ")

#def miles_to_kilo(miles):
#	return round(float(miles) * 1.60934, 2)
	
#print ( " {} miles is equalent to {} kilometeres".format(miles, miles_to_kilo(miles)))

num1, num2 = list( map(float, input("Enter the num1 and num2: ").split(",") ) )

operators = ('+', '-')

op = input("Enter the operation you'd like to perform:").strip()

result = int()

if op in operators:
	if op == '+':
		result = num1 + num2
	elif op == '-':
		result = num1 - num2
else:
	print ("invalid operator")
	
	
	
print ("The result is {}".format(result))
