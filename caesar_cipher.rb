def caesar_cipher(str, key)
  str_split = str.split('')
  str_mapped = str_split.map do |letter|
    x = if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
          if letter.ord.between?((90 - key + 1), 90) || letter.ord.between?((122 - key + 1), 122)
            letter.ord - (26 - key)
          else
            letter.ord + key
          end
        else
          letter
        end
    x.chr
  end
  str_mapped.join
end

print "Enter a string: "
string = gets.chomp
puts "You entered #{string}"

print "Enter the key: "
key = gets.chomp.to_i

puts caesar_cipher(string, key)
