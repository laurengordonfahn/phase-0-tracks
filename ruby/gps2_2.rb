# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split string by the spaces, to keep the words separate
    #(split)
    #(.class) to ensure its an array
    #convert array to a hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def food(var)
  groceryarr = var.split
  groceryhash = {}

  groceryarr.each do |fooditem|
    #hashfooditem = fooditem
    #puts hashfooditem
    #puts fooditem

    groceryhash[fooditem] = 2

  end
  puts groceryhash

end

food("carrots apples cereal pizza")



# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
Status API Training Shop Blog About
