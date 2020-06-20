# ruby ceasar_shift.rb
require 'pry'
def capitalized?(letter)
    letter == letter.upcase
end

def letter_shift(letter, shift)
    alphabet = ('a'..'z').to_a
    cap_alphabet = ('A'..'Z').to_a
    if alphabet.include?(letter) == true || cap_alphabet.include?(letter) == true
        if capitalized?(letter) == true
            index_number = cap_alphabet.index(letter)
            unless (index_number - shift) < 0
                letter = cap_alphabet[(index_number - shift)]
                letter
            else
                letter = cap_alphabet[(26 + (index_number - shift))]
                letter
            end
        else 
                index_number = alphabet.index(letter)
                unless (index_number - shift) < 0
                    letter = alphabet[(index_number - shift)]
                    letter
                else
                    letter = alphabet[(26 + (index_number - shift))]
                    letter
                end
        end
    else
        letter
    end

end
def string_shift(phrase, left)
    array_phrase = phrase.split('')
    shifted = array_phrase.map {|letter| letter_shift(letter, left)}
    puts shifted.join("")
end


def full_shift
    puts "Please enter the phrase you would like to shift"
    phrase = gets.chomp
    puts "Please enter the left-shift factor"
    left = gets.chomp.to_i
    puts "Here is your shifted phrase:"
    string_shift(phrase, left)
    
    
end
full_shift