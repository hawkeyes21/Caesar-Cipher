def caesar_cipher(string, shift_factor)
    string_in_char_array = string.chars
    ciphered_array = []
    string_in_char_array.each() do |char|
        if is_lower_case(char)
            ciphered_array.push(shifted_lower_case_character(char, shift_factor))
        elsif is_upper_case(char) 
            ciphered_array.push(shifted_upper_case_character(char, shift_factor))
        else
            ciphered_array.push(char)
        end
    end
    return ciphered_array.join("")
end

def is_lower_case(char)
    return char.between?('a', 'z')
end

def is_upper_case(char)
    return char.between?('A', 'Z')
end

def shifted_lower_case_character(char, shift_factor)
    integer_representation_of_character = char.ord
    integer_representation_of_character += shift_factor
    if integer_representation_of_character > 122 
        integer_representation_of_character -= 26
    end
    return integer_representation_of_character.chr
end

def shifted_upper_case_character(char, shift_factor)
    integer_representation_of_character = char.ord
    integer_representation_of_character += shift_factor
    if integer_representation_of_character > 90 
        integer_representation_of_character -= 26
    end
    return integer_representation_of_character.chr
end

print caesar_cipher('Jaymin Shah Vadodara', 5)