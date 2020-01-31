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

Character Classes
-

A character class lets you define a range or a list of characters to match. For example, [aeiou] matches any vowel.

Example: Does the string contain a vowel?
#refer the file example.rb

Ranges
-

We can use ranges to match multiple letters or numbers without having to type them all out. In other words, a range like [2-5] is the same as [2345].

Some useful ranges:

    * [0-9] matches any number from 0 to 9
    * [a-z] matches any letter from a to z (no caps)
    * [^a-z] negated range

Example: Does this string contain any numbers?
#refer the file example.rb

There is a nice shorthand syntax for specifying character ranges:

    * \w is equivalent to [0-9a-zA-Z_]
    * \d is the same as [0-9]
    * \s matches white space (tabs, regular space, newline)
There is also the negative form of these:

    * \W anything that’s not in [0-9a-zA-Z_]
    * \D anything that’s not a number
    * \S anything that’s not a space

The dot character . matches everything but new lines. If you need to use a literal . then you will have to escape it.

Example: Escaping special characters
#refer the file example.rb


Modifiers
-

Up until now we have only been able to match a single character at a time. To match multiple characters we can use pattern modifiers.

Modifier	       Description
  \+	            1 or more
  \*	            0 or more
  \?	             0 or 1
\{3,5}        between 3 and 5

Example: Does this look like an IP address?
#refer the file example.rb
