def translate(sentence)
  sentence = sentence.split
  sentence.map! do |word|
    word = word.gsub!(/^(qu|sch|[^aeiou]*)(.*)$/, '\2\1') + 'ay'
  end
  sentence.join ' '
end