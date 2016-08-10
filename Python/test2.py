#!/home/raj/anaconda3/bin/python

#for i in range(1,21):
#	if i % 2 != 0:
#		print("{} is odd".format(i))
#	else:
#		pass

#intAmt = float ( (input("Please enter the investment Amount: ")).strip() )
#intRate = round(float ( (input("Please enter the interest Rate: ")).strip() ), 2)

#def calc_earnings(Amt, Rate):
#	result = 0
	#for i in range(1,11):
	#	result += Amt * Rate
	#return result

#print("{} amount with {} rate will yield following {} as earning".format(intAmt, intRate, calc_earnings(intAmt, intRate) ))


tree_height = int (  input("Please enter how tall you want you pine tree to be: 1 - 10: ") )

space = tree_height - 1

end_space = tree_height - 1

hashes = 1

while tree_height != 0:
	
	for i in range(space):
		print( " ", end="")
	
	space -= 1
	
	for j in range( hashes ):
		print("#", end="")
	
	hashes += 2
	
	tree_height -= 1
	print()

for k in range(end_space):
	print(" ", end="")
print ("#")
