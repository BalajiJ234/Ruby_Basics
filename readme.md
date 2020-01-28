# Ruby_Basics
exercise-1
-
##Hello world to ruby - No of puts statements

exercise-2
-
##Comments in Ruby #octothorpe

exercise-3
-
##Numbers and Math

  + plus, minus, slash, asterisk, percent, less-than, greater than, less than or equal to, greater than or equal to

exercise-4
-
##variables and Names

When I wrote this program the first time I had a mistake, and Ruby told me about it like this:

There are 100 cars available.
There are only 30 drivers available.
There will be 70 empty cars today.
ex4.rb:14: undefined local variable or method `carpool_capacity' for
    main:Object (NameError)
Explain this error in your own words. Make sure you use line numbers and explain why?

  Answer:
    I am not define the variable "carpool_capacity" without defining it we can't use it.

exercise-5
-
##Strings and Text

exercise-6
-
##Printing and More Printing Printing printing

exercise-7
-
##Input values at run time.

exercise-8
-
##Arguments
The ARGV is the "argument variable," a very standard name in programming that you will find used in many other languages. This variable holds the arguments you pass to your Ruby script when you run it. In this exercise you will get to play with this more and see what happens.

exercise-9
-
##Reading the files In two ways:
  * ARGV
  * $stdin.gets.chomps

exercise-10
-
##Reading and Writing the files:

  * close -- Closes the file. Like File->Save.. in your editor.
  * read -- Reads the contents of the file. You can assign the result to a variable.
  * readline -- Reads just one line of a text file.
  * truncate -- Empties the file. Watch out if you care about the file.
  * write('stuff') -- Writes "stuff" to the file.
  * seek(0) -- Move the read/write location to the beginning of the file.


exercise-11
-
##Array and its Methods.(240+)
There are lot of array methods are in Ruby.
    *array.uniq #It will eliminate duplicate data
    *array.take(n) #It will returns the first 'n' Elements of an array.
    *array.drop(n) #It will returns the remove first 'n' Elements of an arrays.
    *array.push(n) or array<<(n) #add a new element at last of the array
    *array.unshift(n) #add a new element at the beginning of an Array
    *array.insert(i,n) #add a new element(n) at any position(i) in an array.
    *array.pop #remove the last element
    *array.shift #remove the first element
    *array.delete(n) #remeove the element
In IRB, by using this command [].methods, we can list the all arrays methods.

References and links!
-

	* https://learnrubythehardway.org/book/preface.html
  * http://ruby-for-beginners.rubymonstas.org/learning_to_program.html
  * https://www.rubyguides.com/ruby-tutorial/
