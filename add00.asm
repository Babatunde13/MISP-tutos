#A program to add numbers two and three
	.text
	
main:
	#The next two lines will generate arithmetic overflow 
	li $8,0x8001	# puts 32 768 into register 8 R8 = 0000 8000
	#li $9,0xAAAA	# puts 43 690 into register 9
	lui $9,0x8000	# puts 2,147,483,648 into register 9 R9 = 8000 0000
	 
	
	#The next two lines DO NOT generate arithmetic overflow 
	#ori $8,$0,0xFFFF 	#puts 65535 into register 8 - If you apply OR operation to any number and zero, the result is the number itself
	#ori $9,$0,0xFFFF	#puts 65535 into register 9 
	#add $10,$8,$9 	#add the content of registers 8 and 9, 
					#puts result in register 10
					
#End of file
