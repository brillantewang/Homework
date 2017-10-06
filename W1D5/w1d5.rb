# DIY ADTs
#
# After you finish the exercises, or if you get stuck on one of the problems, you can view the solutions here.
#
# Exercise 1 - Stack
#
# Let's write a Stack class. To do this, use the following framework:
#
class Stack
  attr_accessor :elements

  def initialize(elements = [])
    @elements = elements
  end

  def add(el)
    elements << el
  end

  def remove
    elements.pop
  end

  def show
    p elements
  end
end
# To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!
#
# Exercise 2 - Queue
#
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and show.
class Queue
  attr_accessor :elements

  def initialize(elements = [])
    @elements = elements
  end

  def enqueue(el)
    elements.unshift(el)
  end

  def dequeue
    elements.pop
  end

  def show
    p elements
  end
end

#
# Test your code to ensure it follows the principle of FIFO.
#
# Exercise 3 - Map
#
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.
#
# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].
#
# Our Map class should have the following instance methods: assign(key, value), lookup(key), remove(key), show. Note that the assign method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!
#
# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map
  attr_accessor :kvpairs

  def initialize(kvpairs = [])
    @kvpairs = kvpairs
  end

  def assign(key, value)
    if lookup(key)
      @kvpairs = kvpairs.map { |k, v| k == key ? [k, value] : [k, v] }
    else
      kvpairs << [key, value]
    end
  end

  def lookup(key)
    kvpairs.each { |k, v| return v if k == key }
    nil
  end

  def remove(key)
    @kvpairs = kvpairs.reject { |k, v| k == key }
  end

  def show
    p kvpairs
  end
end
