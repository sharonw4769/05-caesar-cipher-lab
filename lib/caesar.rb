#the following are global variables 
$low_abc = [*?a..?z]
$caps_abc = [*?A..?Z]
def caesar_encode(string, offset) #encode is adding
  string.split("").map do |character|
    if $low_abc.include?(character)
      new_character = $low_abc[($low_abc.index(character)+offset)%26]
    elsif $caps_abc.include?(character)
      new_character = $caps_abc[($caps_abc.index(character)+offset)%26]
    else 
      character #if not a lowercase or uppercase letter (symbols, spaces, and etc)
    end
  end.join("") #putting the letters together
end

def caesar_decode(string, offset) #decode is subtracting 
  string.split("").map do |character|
    if $low_abc.include?(character)
      new_character = $low_abc[($low_abc.index(character)-offset)%26]
    elsif $caps_abc.include?(character)
      new_character = $caps_abc[($caps_abc.index(character)-offset)%26]
    else 
      character #if not a lowercase or uppercase letter (symbols, spaces, and etc)
    end
  end.join("") #putting the letters together
end


# puts "String?"
# user_string = gets.chomp
# puts "Offset?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)


 