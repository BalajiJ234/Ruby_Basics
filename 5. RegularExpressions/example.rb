
#This returns the index of the first occurrence of the word if it was found or nil otherwise
"Do you like cats?" =~ /like/

#Another way to check if a string matches a regex is to use the match method:
if "Do You like cats?".match(/like/)
  puts "match found!"
end

#Does the string contain a vowel?
def contains_vowel(str)
  str =~ /[aeiou]/
end

#it returns it exists multiple times you'll get different indices
#when using index as it only returns the index first occurrence of the object you're searching for.
contains_vowel("test")

#it returns nil!
contains_vowel("sky")

#Does this string contain any numbers?

def contains_number(str)
  str =~ /[0-9]/
end
contains_number("The year is 2015")  # returns 12
contains_number("The cat is black")  # returns nil

#Escaping special characters?
# If we don't escape, the letter will match
"5a5".match(/\d.\d/)

# In this case only the literal dot matches
"5a5".match(/\d\.\d/) # nil
"5.5".match(/\d\.\d/) # match

# Note that this will also match some invalid IP address
# like 999.999.999.999, but in this case we just care about the format.
def ip_address?(str)
  # We use !! to convert the return value to a boolean
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end
ip_address?("192.168.1.1")  # returns true
ip_address?("0000.0000")    # returns false

#Exact String Matching
# We want to find if this string is exactly four letters long, this will
# still match because it has more than four, but it's not what we want.
"Regex are cool".match /\w{4}/
# Instead we will use the 'beginning of line' and 'end of line' modifiers
"Regex are cool".match /^\w{4}$/
# This time it won't match. This is a rather contrived example, since we could just
# have used .size to find the length, but I think it gets the idea across.

#Capture Groups
Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/
def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end
parse_line("12:41 INFO User has logged in.")

#Example: Named Groups

m = "David 30".match /(?<name>\w+) (?<age>\d+)/
m[:age]
# => "30"
m[:name]
# => "David"


#Example: is there a number preceded by at least one letter?

def number_after_word?(str)
  !!(str =~ /(?<=\w) (\d+)/)
end
number_after_word?("Grade 99")

#Ruby's Regex Class

puts /a/.class
#One possible use is to create a regex from a string:
regexp = Regexp.new("a")
#Another way to create a regexp:
regexp = %r{\w+}

#Formatting Long Regular Expressions
LOG_FORMAT = %r{
  (\d{2}:\d{2}) # Time
  \s(\w+)       # Event type
  \s(.*)        # Message
}x

#Ruby regex: Putting It All Together

#Example: Match all words from a string using .scan

"this is some string".scan(/\w+/)
# => ["this", "is", "some", "string"]

#Example: Extract all the numbers from a string

"The year was 1492.".scan(/\d+/)
# => ["1492"]

#Example: Capitalize all words in a string

str = "lord of the rings"
str.gsub(/\w+/) { |w| w.capitalize }
# => "Lord Of The Rings"

#Example: Validate an email address

email = "test@example.com"
!!email.match(/\A[\w.+-]+@\w+\.\w+\z/)
# true
#This last example uses !! to convert the result into a boolean value (true / false),
#alternatively you can use the match? method in Ruby 2.4+ which already does this for you & it's also faster.
