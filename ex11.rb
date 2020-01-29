#Arrays Elements
array = [1, 3, 5, 4, 1, 3, 3, 6]

#unique elements in the Arrays
u_array = array.uniq
puts "1. Unique array"
p u_array

#Methods of array.
puts "2. Methods of array"
print "Take method:",array.take(3)," \n" #It will returns the first 'n' Elements of an array.
print "Drop method:",array.drop(4)," \n" #It will returns the remove first 'n' Elements of an array.

puts "Adding Items to Array!"

puts "push method or <<"

p array.push(4) # push method #add a new element at last of the array
p array<<(8) #<< Method add a new element at last of the array

puts "unshift method"

p array.unshift(5) #add a new element at the beginning of an Array

p "insert method"
p array.insert(4,8) #add a new element at any position in an array.

p "Removing Elements to Array!"

p "pop method",array.pop #remove the last element
p "shift method",array.shift #remove the first element
p "delete method",array.delete(8) #remove the element

puts "slicing the array"
p "array[1..5]",array[1..5]

puts "3. Print the Index of each element"
array.each_with_index do |num, index|
    print "#{index} "
  end
puts

puts "4. find first index of a repeated element"
repeat = {}
array.each_with_index do |value, i|
  (i + 1).upto array.length - 1 do |j|
    if array[j] == value
      repeat[value] = i
      break
    end
  end
end
p repeat

#method 1 Frequency of each element in the array
hash = Hash.new(0)
array.each {|key| hash[key] += 1}
puts "5. Frequency of each element in the array!"
p hash

#method 2 Frequency of each element in the array
hash = Hash.new(0)
array.each do |key|
  hash[key] += 1
end
puts "5. Frequency of each element in the array!"
p hash

p repeat

#write program to find first largest and second largest in ruby

puts "First largest and second largest element in an array...#{array.sort[-1]} and #{array.sort[-2]}"
