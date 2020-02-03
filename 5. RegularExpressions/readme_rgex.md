Regular Expressions
-

Ruby regular expressions (ruby regex for short) help you find specific patterns inside strings, with the intent of extracting data for further processing.

Two common use cases for regular expressions include validation & parsing.

##For example:

Think about an email address, with a ruby regex you can define what a valid email address looks like. In other words, your program will be able to tell the difference between a valid & invalid email address.


Ruby regular expressions are defined between two forward slashes to differentiate them from other language syntax. The most simple expressions match a word or even a single letter.

##For example:
#refer the file example.rb


Now you are going to learn how to build more advanced patterns so you can match, capture & replace things like dates, phones numbers, URLs, etc.


There is a nice shorthand syntax for specifying character ranges:

    * \w is equivalent to [0-9a-zA-Z_]
    * \d is the same as [0-9]
    * \s matches white space (tabs, regular space, newline)
There is also the negative form of these:

    * \W anything that’s not in [0-9a-zA-Z_]
    * \D anything that’s not a number
    * \S anything that’s not a space


Regular expressions can be used with many Ruby methods.

      * .split
      * .scan
      * .gsub
      * and many more...
Example: Refer the file example.rb

Conclusion
-

Regular expressions are amazing but sometimes they can be a bit tricky. Using a tool like rubular.com can help you build your ruby regex in a more interactive way.
Rubular also includes a Ruby regular expression cheat sheet that you will find very useful.
Now it's your turn to crack open that editor and start coding!
