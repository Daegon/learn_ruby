def translate(sentence)
  def convert_word(word)
    if word =~ /^(qu|sch|[^aeiou])/
      consonant =  word.gsub(/^(qu|sch|[^aeiou]).*$/, '\1')
      word.gsub!(/^(qu|sch|[^aeiou])(.*)$/, '\2')
      word = word + consonant
      word = convert_word word
    end
    word
  end
  sentence = sentence.split
  sentence.map! do |word|
    word = convert_word(word) + 'ay'
  end
  sentence.join ' '
end