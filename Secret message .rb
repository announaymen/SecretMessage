def encrypt_decrypt(text, key, encrypt: true)
  key_sequence = key.chars.map(&:to_i)
  text.chars.map.with_index do |char, index|
    shift = key_sequence[index % key_sequence.length]
    new_char_code = encrypt ? char.ord + shift : char.ord - shift
    new_char_code.chr
  end.join
end


def decrypt(text, key)
  encrypt_decrypt(text, key, encrypt: false)
end

puts "Enter the decryption key:"
key = gets.chomp
encrypted_message = "[ow#arn n\"rcues} hko;\"py uowk\"fqu yxu!ou ydrmnr!zjap#ruky(y\"gnrw jne&cs\"lndnsuxwcvlbln by\"dkdmowd"
decrypted_message = decrypt(encrypted_message, key)
puts "Decrypted Message: #{decrypted_message}"
