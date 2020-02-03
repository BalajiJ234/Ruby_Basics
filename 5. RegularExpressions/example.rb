
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

# like 999.999.999.999, but in this case we just care about the format.
def ip_address?(str)
  # We use !! to convert the return value to a boolean
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end
ip_address?("192.168.1.1")  # returns true
ip_address?("0000.0000")    # returns false


#Example: Capitalize all words in a string

str = "lord of the rings"
str.gsub(/\w+/) { |w| w.capitalize }
# => "Lord Of The Rings"

#Example: Validate an email address

email = "test@example.com"
!!email.match(/\A[\w.+-]+@\w+\.\w+\z/)
