def reverser
  sentence = yield.split
  sentence.map! do |word|
    word.reverse!
  end
  sentence.join ' '
end

def adder(add = 1)
  yield + add
end

def repeater(repeat = 1)
  repeat.times { yield }
end