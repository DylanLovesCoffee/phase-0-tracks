# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Split user input into an array
# Push each element in the array into a hash
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: hash

grocery_list_hash = {}

def create_list(hash, groceries)
	index = 0
	groceries = groceries.split(" ")
	until index == groceries.length
	hash[groceries[index]] = 1
	index += 1
	end
	return hash
end

# Method to add an item to a list
# input: list(hash), item name(string), and optional quantity(integer)
# steps: take item name and quantity and push to list. As key and value
# output: updated list

# ADD ITEM
def add_item(hash, item, quantity)
	  hash[item] = quantity
	  return hash
end

# Method to remove an item from the list
# input: item name
# steps: check if item name is in list. If item is in list, remove item from the list. If not, ask user for a valid item
# output: updated list

# REMOVE ITEM
def remove_item(hash,item)
	if hash["#{item}"] == hash["#{item}"]
		hash.delete("#{item}")
	else puts
		"Invalid item"
	end
	return hash
end

# Method to update the quantity of an item
# input: item name, integer
# steps: check if item name is in list. If item is in the list, update the quantity. If not, ask user for a valid item
 # output: updated list

 # UPDATE ITEM
 def modify_item(hash, item, value)
 	if hash["#{item}"] == hash["#{item}"]
 		hash["#{item}"] = value
 	else puts
 		"Invalid item"
 	end
 	return hash
 end
 # Method to print a list and make it look pretty
 # input: list, item, quantities
 # steps: iterate over list
 # output: item name and its quantity

 # PRINT LIST
 def print_list(hash)
   hash.each do |item, quantity|
     puts item + " : " + quantity.to_s
   end
 end

# ----- TEST CODE -----
create_list(grocery_list_hash, "Lemonade Tomatoes Onions Ice_Cream")
add_item(grocery_list_hash, "Lemonade", 2)
add_item(grocery_list_hash, "Tomatoes", 3)
add_item(grocery_list_hash, "Onions", 1)
add_item(grocery_list_hash, "Ice_Cream", 4)
remove_item(grocery_list_hash, "Lemonade")
modify_item(grocery_list_hash, "Ice_Cream", 1)
print_list(grocery_list_hash)


# REFLECTION
# I learned that pseudocoding is a huge part of the coding process. Especially when working with a partner and working through something more complex than we thought, it was incredibly helpful to have some guidelines to follow and keep us on track.
# The tradeoff of using arrays and hashes together was turning an array into a hash, which proved to be much more challenging than expected.
# A method returns the last line declared.
# You can pass methods in to a method as an argument.
# You can pass information between methods by calling a method as an argument. What we had also done was create a hash outside of our methods that we could call on.
# I feel that the importance of pseudocoding got through to me in this challenge.
