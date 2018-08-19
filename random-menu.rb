adjective = ["sloopy", "dirty", "salty", "spicy", "savory", "pungent", "green",
"interesting", "lemony", "sweet"]
adjective = adjective.shuffle

style = ["seared", "baked", "grilled", "pan-fried", "boiled", "smoked", "sauteed", "blackened", "roasted", "mashed"]
style = style.shuffle

food = ["salmon", "rice", "beef", "gyoza", "eggs", "steak", "veggies", "catfish", "gravy", "pie"]
food = food.shuffle

menu = []

food.count.times do |i|
  menu << "#{i + 1}." + " #{adjective[i]}" + " #{style[i]}" + " #{food[i]}"
end

prompt = "\nHow many items would you like to see: "
error = "\nEnter in a number between 1 and 10 only"

################################################################################

until user_input >= 1 && user_input <= 10
  print error
  print prompt
  user_input = gets.chomp.to_i
end

puts menu[0..(user_input - 1)]
