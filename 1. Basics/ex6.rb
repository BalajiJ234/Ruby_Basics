#Printing , Printing Printing

puts "Mary had a little lamb."
puts "Its fleece was white as #{'snow'}"
puts "And everywhere that mary went."
puts "*"*10

end1 = "C"
end2 = "heese"
end3 = " "
end4 = "B"
end5 = "urger"

#watch print vs puts vs p on this line
print end1 + end2 + end3
puts end4 + end5
p end1 + end2 + end3 + end4 + end5

#You will almost always use #{} to format your strings,
#but there are times when you want to apply the same format to multiple values. That's when %{} comes in handy.

format = "%{One} %{Two} %{Three} %{Four} %{Six}"
puts format %{One:1, Two:2, Three:3, Four:4, Six:5}
