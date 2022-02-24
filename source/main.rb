class CaeserCipher

    def initialize(string, shift_factor)
        @string = string
        @shift_factor = shift_factor
    end

    def caesar_cipher()
        string_in_char_array = @string.chars
        ciphered_array = []
        string_in_char_array.each() do |char|
            if is_lower_case(char)
                ciphered_array.push(shifted_lower_case_character(char))
            elsif is_upper_case(char) 
                ciphered_array.push(shifted_upper_case_character(char))
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

    def shifted_lower_case_character(char)
        base = 97
        return ((((char.ord - base) + @shift_factor) % 26) + base).chr
    end

    def shifted_upper_case_character(char)
        base = 65
        return ((((char.ord - base) + @shift_factor) % 26) + base).chr
    end
end
    
cc = CaeserCipher.new('Let\'s see if this works', 5)
print cc.caesar_cipher()