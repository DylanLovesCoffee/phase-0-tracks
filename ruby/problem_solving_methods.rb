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
  while fib < index
    sum = fib_array.last + (fib_array[-2])
    fib_array.push(sum)
    fib += 1
  end
end
