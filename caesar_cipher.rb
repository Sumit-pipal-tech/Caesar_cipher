def caesar_cipher(string,shift)
  result =""

  string.chars.each do |char|
    if('a'..'z').include?(char)
      new_char=((char.ord-'a'.ord+shift)%26 +'a'.ord).chr
    result << new_char

    elsif('A'..'Z').include?(char)
    new_char=((char.ord-'A'.ord+shift)%26 +'A'.ord).chr
     result << new_char

    else
      result<<char
    end

  end
  result
end

puts caesar_cipher("What a string !",5)
puts caesar_cipher("abc", 1)
puts caesar_cipher("xyz", 3)
puts caesar_cipher("Hello, World!", 13)
