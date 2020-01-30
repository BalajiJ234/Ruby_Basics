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
