# Asking data to the user! it is run time data get from the user

puts "What is your first name?"
f_name = gets.chomp
puts "What is your last name?"
l_name = gets.chomp

#While geting the input from the keyboard default it is string. whether we need Integer.
#Explicitly we have to convert to Integer.
puts "What is your age?"
#This is one type "convert to Integer"
age = Integer(gets.chomp)

puts "How tall you are?"
#This is another type "convert to Integer"
tall = gets.chomp.to_i

puts "How much do you weight?"
weight = Integer(gets.chomp)

puts "What is your basic pay?"
b_pay = Float(gets.chomp) #we can also do this gets.chomp.to_f

puts "So, you're #{f_name +" "+ l_name}, #{age} old, #{tall} tall and #{weight} heavy :-)."
puts "Basic Pay: #{b_pay}"
