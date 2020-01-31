exercise-11
-

##Array and its Methods.(240+). There are lot of array methods are in Ruby:

    *array.uniq #It will eliminate duplicate data
    *array.take(n) #It will returns the first 'n' Elements of an array.
    *array.drop(n) #It will returns the remove first 'n' Elements of an arrays.
    *array.push(n) or array<<(n) #add a new element at last of the array
    *array.unshift(n) #add a new element at the beginning of an Array
    *array.insert(i,n) #add a new element(n) at any position(i) in an array.
    *array.pop #remove the last element
    *array.shift #remove the first element
    *array.delete(n) #remove the element

In IRB, by using this command [].methods, we can list the all arrays methods.


Try it out with your own traditional logic as well as go through the inbuilt methods!
-

Initially try with your own traditional logic! (Definetly Do it)

a = [1, 3, 4, 5, 1, 3, 3, 6]


* Find uniq elements in array ##method:  array.uniq

* Figure out how to get all methods applicable to array ##try it on irb: >[].methods.sort
    #there are lot of inbuilt methods in arrays #try most of the methods!

* Print the index of each element in the array
    #array.each_with_index

* find first index of a repeated element
    #array.index vs array.rindex (gothrough that!)! You will get an Idea!

* Frequency of each element in an array

* write program to find first largest and second largest in ruby
    #array.sort[-1] , array.sort[-2]
