# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split string by the spaces, to keep the words separate
    #(split)
    #(.class) to ensure its an array
    #convert array to a hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] #hash
$groceryhash = {}

def food(list)
  groceryarr = list.to_s.split
  p groceryarr.class
  
  groceryarr.each do |fooditem|
    #hashfooditem = fooditem
    #puts hashfooditem
    #puts fooditem

    $groceryhash[fooditem] = 2

  end

  p groceryarr.class
  puts $groceryhash
 

end

food("carrots apples cereal pizza")



# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:
def add_item(item_to_be_added)
  puts "would you like to add a quanity with your item otherwise its default is 2, Yes or No?"
  wants_to_add_quanity = gets.chomp.downcase 

  if wants_to_add_quanity == "yes"
    puts "what quantity would you like? Type a number."
    quantity = gets.chomp.to_i

    $groceryhash[item_to_be_added.to_sym] = quantity
  elsif wants_to_add_quanity == "no"
    puts "you have opted to not add a quantity so your default quantity is 2."
    $groceryhash[item_to_be_added.to_sym] = 2
  else 
    puts "I didn't understand you would you like to set a quanity number for this item Yes or No other wise the default is 2."
  end
  p $groceryhash
end

p add_item("Paleo Bread")



# Method to remove an item from the list
# input: hash
# steps: .delete(item_to_be_removed)
# output: hash with item_to_be_removed not in the hash

def remove_item(item_to_be_removed)
  $groceryhash.delete(item_to_be_removed)
end

p remove_item("cereal")


# Method to update the quantity of an item
# input: hash
# steps: call the key/food type you want to update and then set it equal to a new value
# output: hash

def change_quantity(item_to_be_changed, quantity)
  $groceryhash[item_to_be_changed.to_sym] = quantity
  p $groceryhash
end




# Method to print a list and make it look pretty
# input: hash with some hash rockets
# steps: a .each using .to_s for each item
# output: hash with only symbols no hash rockets and spaces for n/

def grocery_printed_pretty(groceryhash)
  $groceryhash.map do |food_item, food_quantity|
    puts "#{food_item.to_s} : #{food_quantity}"
  end
end 

grocery_printed_pretty($groceryhash) 





# Status API Training Shop Blog About
