def caesar_cipher(sentence, n)
  result = ''
  sentence.chars.each do |letter|
    if letter =~ (/\w/)
    case 
    when letter.downcase.ord + n < 123 && letter == letter.downcase then result << (letter.downcase.ord + n).chr
    when letter.downcase.ord + n < 123 && letter != letter.downcase then result << (letter.downcase.ord + n).chr.upcase
    when letter.downcase.ord + n > 122 && letter != letter.downcase then result << (letter.downcase.ord + n - 26).chr.upcase
    else result << (letter.ord + n - 26).chr.upcase
    end
  else
    result << letter
  end
  end
  return result
end

p caesar_cipher("What a string!", 5 )