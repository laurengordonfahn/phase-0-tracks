################PSEUDO###################

# encrypt method
# get length of input string
# loop
#     advance every letter 1 forward (b=>c)
#     skip spaces
#     account for z

# decrypt
# index all letters in alphabet
# loop through each letter in input:
#     find current letter in that alphabet (returns current position)
#     subtract 1 from current position
#     output letter from index that matches that position

# ask user if they want to encypt or decypt
# ask them for the string
# conduct the operation
# print to screen
################PSEUDO###################


def encrypt(eword)
    strlen=eword.length
    counter = 0
    while counter < strlen
        if eword[counter]==" "
        elsif eword[counter]=="z"
             eword[counter]="a"
        else
        eword[counter]=eword[counter].next
    end
    counter+=1
    end
    return eword
end


def alphamethod(currentletter)
    alpha="abcdefghijklmnopqrstuvwxyz"
    newletter=alpha.index(currentletter)-1
    alpha[newletter]
end

def decrypt(dword)
    strlen=dword.length
    counter=0
    # while counter<$strlen2
    while counter<strlen
        if dword[counter]==" "
        elsif dword[counter]=="a"
             dword[counter]="z"
        else
        dword[counter]=alphamethod(dword[counter])
    end
    counter+=1
    end
    return dword
end

answer=nil

loop do
    puts "do you want to encrypt or decrypt?"
    answer=gets.chomp
    break if answer=="encrypt"
    break if answer=="decrypt"
end

puts "what is the password you want to #{answer}?"
word=gets.chomp

if answer=="encrypt"
    p encrypt(word)
else p decrypt(word)
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# This nested method works because it first encrypts the string that's input, then takes that output (from the encryption) 
# and decrypts it, effectively "voiding" the original encryption.
decrypt(encrypt("swordfish"))