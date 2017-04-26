def status
  puts "Status message"
  yield("New", "Awesome")
end

status{ |word1, word2| puts "#{word1}, way more #{word2} status message!!"}

sports = ["Hockey", "Baseball", "Basketball", "Football"]
game_of_thrones = {
  queen: "Cersei",
  knight: "Jamie",
  bastard: "Jon Snow",
  no_name: "Aria Stark"
}

sports.map!{|sport|
  sport + " is awesome and"
}


game_of_thrones.each{|title, character|
  puts "#{game_of_thrones[title]} is an important part of Game of Thrones."
}

sports.each{|sport|
  puts "#{sport} is my favorite sport!"
}

# Release 2

numbers = [1, 2, 3, 4, 5]
person = {
  name: "Steve",
  age: 25,
  home: "California"
}
# delete_if

numbers.delete_if{ |number| number < 3}
person.delete_if{ |information, data| data == "Steve"}

# keep_if

numbers.keep_if{|number| number > 2}
person.keep_if{|information, data| data == "Steve"}

# select

new_numbers = numbers.select{|number| number.even? }
new_person = person.select{ |information, data| data == 25}

# take_while
new_number = numbers.take_while{|number| number < 5}

# reject
new_person = person.reject{|information, data| data == "California"}
