require 'pry'

foods = ["caesar salad", "pasta", "fish", "pizza", "macaroni", "split pea soup"]

#enumerable or iterator: it means we're going to go over each element and perform an operation

# -----------------------------------------------------------

#Using the correct iterator, use the original `foods` array, grab that first food that starts with 'p'

#The correct iterator is ,find! it's purpose is to return the first element that makes the equation in the block return true. Find will run until the equation in the block returns true, and won't iterate over the elements that come after.

#use 'do' when your logic is going to be several lines long
foods.find do |food_string|
  #inside of the block we're preparing a framework for what we want to do with each element that we'll be iterating over
  #the code that we write in the block should be an equation that, when executed, returns true or false
  food_string[0] == "p"

  #A line of code that when executed returns true or false and helps us in our quest to find the first food_string that starts with the letter 'p'
end

#use the curly braces when the logic can be written in one line
foods.find{|food_string| food_string[0] == "p"}

# => "pasta"

# -----------------------------------------------------------

#Using the correct iterator, use the original `foods` array, and grab all the foods that start with 'P'

#Correct iterator: select! It returns a brand new array with all elements that pass the block (ie that makes the equation in the block return true), and it goes alllll the way until the end, checking every element in the array

foods_that_start_with_p = foods.select do |food_string|
  food_string[0] == "p"
end

# => ["pasta", "pizza"]

# SAVE THE RETURN VALUE TO A VARIABLE:
#foods_that_start_with_p = foods.select{|food_string| food_string[0] == "p"}
#REMEMBER THAT YOU CAN CHAIN THESE METHODS:
# first_food_that_starts_with_p = foods.select{|food_string| food_string[0] == "p"}.find{|food_string|}

# -----------------------------------------------------------

#Using the correct iterator, return a new array with all elements from the `foods` array capitalized

#Correct iterator: MAP! Map works verrrryy differently from find and select. Find and select both require an equation that when executed returns either or false. MAP on the other hand requires instructions for re-composing the element.

#IMPORTANT: Map ALWAYS returns the same number of elements as the original collection. The purpose of MAP is to make a transformation on every element in the collection.


capitalized_foods = foods.map do |food_string|
  #whatever gets returned from here will be the element that gets added to the new array
  #so write out the code that makes the transformation that you want
  #food_string[0] = food_string[0].upcase
  #food_string
  food_string.split(" ").map{|word| word.capitalize}.join(" ")
end

# => ["Caesar Salad", "Pasta", ...]


#Accomplish the first deliverable without using the built-in Ruby iterator method

#Accomplish the final deliverable without using the built-in Ruby iterator method



movie_titles = ["batman begins", "titanic", "something else", nil, "another title"]

capitalized_movies = movie_titles.map do |title|
  binding.pry
  title.split(" ").map{|word| word.capitalize}.join(" ")
end




#BONUS

foods_part_two = [
  {name: "Kale", vegan: true},
  {name: "Fish", vegan: false},
  {name: "Beyond Burger", vegan: true},
  {name: "In-N-Out Burger", vegan: false}
]

#Using the correct iterator, create a new array from the `foods_part_two` array with just vegan food options

teams = {
  home: {name: "Flatiron Frogs", students: ["Tripp", "Jay", "Joohyun", "Madeline"]},
  away: {name: "General Assembly Gremlins", students: ["Trey", "Bart", "Kim"]}
}

#Using the correct iterator, grab _all_ the students from both teams
