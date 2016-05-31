# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

 "zom".insert(2, "o")
# => “zoom”

#option 2
"zom".insert(1, "o")

 "enhance".center(13, padstr=" ")
# => "    enhance    "


 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert (8, "suspects")
#=> "the usual suspects"

#option 2
"the usual".concat(" suspects")


"suspects".insert (0, "the usual ") 
# => "the usual suspects"

# option 2
 "suspects".prepend ("the usual")


"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice!("he mystery of the missing first letter")
# => "he mystery of the missing first letter"

#other options considered:
# I should up date my ruby so I have .delete_at that works best!
new_str_length = "The mystery of the missing first letter".length - 1
"The mystery of the missing first letter".slice!(1, new_str_length)

"Elementary,    my   dear        Watson!".squeeze (" ")
# => "Elementary, my dear Watson!"


 "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# this is the ASCII printable character for the lower case z. 

 "How many times does the letter 'a' appear in this string?".index ("a")

# => 4