def caesar_cipher(string, shift_factor)
    caesar_cipher_string = ""
    key_codes = string.chars.map(&:ord)

    key_codes.each_with_index do |key_code, index|
        (key_code >= 65 && key_code <= 90) ? key_codes[index] = (key_code - 65 + shift_factor) % 26 + 65 : #Uppercase Letters
        (key_code >= 97 && key_code <= 122) ? key_codes[index] = (key_code - 97 + shift_factor) % 26 + 97 : nil #Lowercase Letters
    end

    key_codes.each_with_index { |key_code, index| key_codes[index] = key_code.chr }
    caesar_cipher_string = key_codes.join()

    p caesar_cipher_string
end

puts "Please enter a string to convert to Caesar cipher:"
string_1 = gets.chomp
puts "Please enter a shift factor to convert to your string to Caesar cipher: "
shift_factor_1 = gets.chomp.to_i

caesar_cipher(string_1, shift_factor_1)
