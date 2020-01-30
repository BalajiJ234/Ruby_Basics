#Implement stack and queue in Ruby!
#Classes and Objects

class Stack
  def initialize(arr)
    @arr = arr
  end
  def push(num)
    return @arr.push(num)
  end
  def pop()
    if @arr.empty?
      print "Array is empty"
    end
    return @arr.pop
  end
  def display()
    p @arr
  end
end

class Queue
  def initialize(arr)
    @arr = arr
  end
  def enqueue(data)
    return @arr.prepend(data)
  end
  def dequeue()
    if @arr.empty?
      print "Array is empty"
    end
    return @arr.pop
  end
  def display()
    p @arr
  end
end

arr = [1, 3, 5, 7, 9]
stack = Stack.new(arr)
stack.push(11)
stack.display()
stack.pop()
stack.pop()
stack.display()

a = []
queue = Queue.new(a)
queue.enqueue(11)
queue.enqueue(12)
queue.enqueue(32)
queue.enqueue(34)
queue.enqueue(21)
queue.display()
queue.dequeue()
queue.dequeue()
queue.display()
