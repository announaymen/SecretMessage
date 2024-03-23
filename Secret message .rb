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

puts " enter the decryption key:"
key = gets.chomp

encrypted_message = "[ow*rn!s{ rueljuws\"jev;&c ydrvun\"lkne)s{dy)v pmuy,\"d up|g cv rojgsvuuluodlg#a|!jkaornm/"
decrypted_message=  decrypt(encrypted_message, key)

puts "Decrypted Message: #{decrypted_message}"
