my_array = [10, 20, 30, 40, 50]

def search_array(array, integer)
  index = 0
  array.each do |element|
    if integer == element
      puts index
    else
      p 'nil'
      index += 1
    end
  end
end

search_array(my_array, 40)

def fibonacci(index)
  fib = 0
  fib_array = [0, 1, 1]
  while fib + 3 < index
    sum = fib_array[-1] + fib_array[-2]
    fib_array.push(sum)
    fib += 1
  end
  return fib_array
end

p fibonacci(100)

# Run a range of 1 through to the length of the array - 1 to match the number of elements in said array. This is how many times the block will repeat itself.
# Use delete_at to return the element as the new element value, which we will later insert back into our array
# Create a loop where the program will insert our new element value in the correct index, while the original element is greater than zero and our new element value is less than the array's element - 1.

def insertion_sort(your_array)
  (1..your_array.length - 1).each do |element|
    new_value = your_array.delete_at(element)
    element -= 1 while element > 0 && new_value < your_array[element - 1]
    your_array.insert(element, new_value)
  end
  return your_array
end

random_array = [11, 60, 43, 25, 9, 88, 142, 74]
p insertion_sort(random_array)
