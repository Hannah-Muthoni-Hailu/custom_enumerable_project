module Enumerable
  # Your code goes here
  def my_each_with_index
    counter = 0
    for item in self
      yield item, counter
      counter += 1
    end
  end

  def my_select
    res = []
    for item in self
      res.push(item) if yield item
    end
    res
  end

  def my_all?
    for item in self
      return false unless yield item
    end
    return true
  end

  def my_any?
    for item in self
      return true if yield item
    end
    return false
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for item in self
      yield item
    end
  end
end
