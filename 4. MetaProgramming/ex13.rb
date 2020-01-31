#MetaProgramming
#Basic Examples
#Create a new Instance of class Object!
my_obj = Object.new

#Create a another Instance of class Object!
my_obj2 = Object.new

#define a method on my_obj to set the instance variable @my_instance_var
def my_obj.set_my_var=(var)
  @my_instance_var=var
end

#define another method on my_obj to get the instance variable @my_instance_var
def my_obj.get_my_var
  @my_instance_var
end

my_obj.set_my_var="Hello Ruby #{"MetaProgramming"}"
my_obj.get_my_var


#my_obj2.set_my_var="error" #"No Method Error"
#When we try to call set_my_var on our second object my_obj2 the interpreter raises a
#NoMethodError to tell us that my_other_object doesn't recoginize the method set_my_var()

# To refer back this again, here are four different approaches to defining the same class methods:
#Try it on IRB
#+++++++++++++
#$>irb
# approach 1
# class MyClass
#   def self.capitalize_name
#     name.upcase
#   end
# end
# print MyClass.capitalize_name # => MYCLASS
#
# approach 2
# class MyClass
#   # defining a class method within the class definition
#   def MyClass.capitalize_name
#     name.upcase
#   end
# end
# print MyClass.capitalize_name # => MYCLASS
#
# # approach 3
# class MyClass;end
# # defining a class method out with the class definition
# def MyClass.capitalize_name
#   name.upcase
# end
# print MyClass.capitalize_name # => MYCLASS
#
# # approach 4
# # define a new class named MyClass
# MyClass = Class.new
# # add the capitalize_name to MyClass
# def MyClass.capitalize_name
#   name.upcase
# end
# print MyClass.capitalize_name # => MYCLASS
