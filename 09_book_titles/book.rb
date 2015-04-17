class Book

  def initialize
    @stop_words = ['the', 'a', 'an', 'and', 'of', 'in']
  end

  def title=(title)
    title = title.split
    part = 1
    title.each {|word| word.capitalize! if part == 1 || ! @stop_words.include?(word); part += 1}
    @title = title.join ' '
    puts @title
  end

  def title
    @title
  end

end