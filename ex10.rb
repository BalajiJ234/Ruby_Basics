filename = ARGV.first
puts "We are going to erase the file #{filename}"
puts "If you don't want to do that, hit CTRL-C"
puts "If you do want that, hit RETURN."
$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Erasing the file..."
target.truncate(0)

puts "Now I'm going to add three lines.... "

print "line 1:"
line1 = $stdin.gets

print "line 2:"
line2 = $stdin.gets

print "line 3:"
line3 = $stdin.gets

#Writing the three lines in the file.
target.write(line1,line2,line3)

#close the file.
target.close
