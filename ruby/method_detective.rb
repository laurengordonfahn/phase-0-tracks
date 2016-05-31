# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

 puts "zom".insert(2, "o")
# => “zoom”

#option 2
puts "zom".insert(1, "o")

 puts "enhance".center(13, padstr=" ")
# => "    enhance    "


 puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(9, " suspects")
#=> "the usual suspects"

#option 2
puts "the usual".concat(" suspects")


puts "suspects".insert(0, "the usual ") 
# => "the usual suspects"

# option 2
 puts "suspects".prepend ("the usual ")


puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice!("he mystery of the missing first letter")
# => "he mystery of the missing first letter"

#other options considered:
# I should up date my ruby so I have .delete_at that works best!
new_str_length = "The mystery of the missing first letter".length - 1
puts "The mystery of the missing first letter".slice!(1, new_str_length)

puts "Elementary,    my   dear        Watson!".squeeze (" ")
# => "Elementary, my dear Watson!"


puts "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# this is the ASCII printable character for the lower case z. 

 puts "How many times does the letter 'a' appear in this string?".count ("a")

# => 4