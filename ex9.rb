#Method 1
f_name = ARGV.first
content = open(f_name)
puts "Here is your file #{f_name}..."
print content.read
content.close
#Method 2
print "Type the filename again:"
file_again = $stdin.gets.chomp

content_again = open(file_again)

print content_again.read
content_again.close
