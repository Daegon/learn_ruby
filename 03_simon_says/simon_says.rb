def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, count = 2)
  str + " #{str}" * (count - 1)
end

def start_of_word(s, length)
  s[0, length]
end

def first_word(word)
  word.split[0]
end

def titleize(word)
  parts = word.split
  part = 1
  parts.each {|s| s.capitalize! if part == 1 || ! ['any', 'and', 'the', 'over'].include?(s); part += 1}
  parts.join ' '
end