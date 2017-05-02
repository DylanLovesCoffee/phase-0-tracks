# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
# zombie_apocalypse_supplies.each { |supply| print supply + '*'}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

# def bubble_sort(array)
#   loop do
#     swapped = false
#     (array.length - 1).times do |index|
#       if array[index].downcase > array[index + 1].downcase
#         array[index], array[index + 1] = array[index + 1], array[index]
#         swapped = true
#       end
#     end
#     break if swapped == false
#   end
#   array
# end
#
# p bubble_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
# def item_search(string)
#   zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
#   zombie_apocalypse_supplies.each do |supply|
#     if supply == string
#       puts "Yes, the list contains #{string}."
#     else
#       puts "No, the list doesn't contain #{string}."
#     end
#   end
# end
#
# p item_search("hatchet")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

# garbage = ["binoculars", "CB radio", "batteries"]
# p zombie_apocalypse_supplies - garbage

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]
# # ----
# p zombie_apocalypse_supplies | other_survivor_supplies


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

# extinct_animals.each { |animal, year|
#   print "#{animal} - #{year} * "
# }

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# extinct_animals.each { |animal, year|
#   if year < 2000
#     extinct_animals[animal] = year
#   else year > 2000
#     extinct_animals.delete(animal)
#   end
# }
# p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# extinct_animals.each do |animal, year|
#   extinct_animals[animal] = (year + 3)
# end
#
# p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# def animal_search(animal)
#   extinct_animals = {
#     "Tasmanian Tiger" => 1936,
#     "Eastern Hare Wallaby" => 1890,
#     "Dodo" => 1662,
#     "Pyrenean Ibex" => 2000,
#     "Passenger Pigeon" => 1914,
#     "West African Black Rhinoceros" => 2011,
#     "Laysan Crake" => 1923
#   }
#   extinct_animals.each do |key, value|
#     if key == animal
#       puts "#{animal} is extinct."
#     end
#   end
# end
#
# animal_search("Andean Cat")
# animal_search("Dodo")
# animal_search("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

# p extinct_animals.assoc("Passenger Pigeon")
