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

*  \+	=> 1 or more
*  \*	=> 0 or more
*  \? => 0 or 1
*  \{3,5\} => between 3 and 5

Example: Does this look like an IP address?
#refer the file example.rb

Exact String Matching
-

If you need exact matches you will need another type of modifier.<br>
#refer the file example.rb

If you want to match strictly at the start of a string and not just on every line (after a \n) you need to use \A and \Z instead of ^ and $

Capture Groups
-

With capture groups, we can capture part of a match and reuse it later. To capture a match we enclose the part we want to capture in parenthesis.

-

Example: Parsing a log file
refer the file example.rb

-

In this example, we are using .match instead of =~.

This method returns a MatchData object if there is a match, nil otherwise. The MatchData class has many useful methods, check out the documentation to learn more!

If you want just a boolean value (true / false) then you can use the match? method, which is available since Ruby 2.4. This also faster than match since Ruby doesn’t need to create a MatchData object.

You can access the captured data using the .captures method or treating the MatchData object like an array, the zero index will have the full match and consequent indexes will contain the matched groups.

If you want the first capture group you can do this:

m = "John 31".match /\w+ (\d+)/
m[1]
# 31
You can also have non-capturing groups. They will let you group expressions together without a performance penalty. You may also find named groups useful for making complex expressions easier to read.

-

Named Groups
-

*  \(?:...)	=> Non-capturing group
*  \(?<foo>...	=> Named group

  Example: Named Groups

  m = "David 30".match /(?<name>\w+) (?<age>\d+)/
  m[:age]
  # => "30"
  m[:name]
  # => "David"

  A named group returns a MatchData object which you can access to read the results.

Look Ahead & Look Behind
-

This is a more advanced technique that might not be available in all regex implementations. Ruby’s regular expression engine is able to do this, so let’s see how to take advantage of that.

Look ahead lets us peek and see if there is a specific match before or after.

* (?=pat)	 -  Positive lookahead
* (?<=pat) -	Positive lookbehind
* (?!pat)	 -  Negative lookahead
* (?<!pat) - 	Negative lookbehind

Example: is there a number preceded by at least one letter?

def number_after_word?(str)
  !!(str =~ /(?<=\w) (\d+)/)
end
number_after_word?("Grade 99")

Ruby's Regex Class
-

Ruby regular expressions are instances of the Regexp class. Most of the time you won't be using this class directly, but it is good to know 🙂

Regex Options
-

You can set some options on your regular expression to make it behave differently.

    *  i => ruby regex case insensitive
    *  m => dot matches newline
    *  x => ignore whitespace
To use these options you add the letter at the end of the regex, after the closing /.

<b>Like this:</b>

    * "abc".match?(/[A-Z]/i)

Formatting Long Regular Expressions
-

Complex Ruby regular expressions can get pretty hard to read, so it will be helpful if we break them into multiple lines. We can do this by using the 'x' modifier. This format also allows you to use comments inside your regex.

Example:

*    LOG_FORMAT = %r{
      (\d{2}:\d{2}) # Time
      \s(\w+)       # Event type
      \s(.\*)        # Message
    }x

Ruby regex: Putting It All Together
-

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
