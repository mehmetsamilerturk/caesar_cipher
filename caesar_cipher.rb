def caesar_cipher(str, key)
  str_split = str.split('')
  str_mapped = str_split.map do |letter|
    x = if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
          letter.ord.between?(65, 90) ? ((letter.ord - 65) + key) % 26 + 65 : ((letter.ord - 97) + key) % 26 + 97
        else
          letter
        end
    x.chr
  end
  str_mapped.join
end
