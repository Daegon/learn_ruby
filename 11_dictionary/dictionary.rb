class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(data)
    if data.is_a?(Hash)
      @entries.merge! data
    else
      @entries[data] = nil
    end
    @entries = Hash[@entries.sort]
  end

  def keywords
    @entries.keys
  end

  def include?(key)
    @entries.include? key
  end

  def find(value)
    result = {}
    @entries.each_pair {|key, val| result[key] = val if key =~ Regexp.new("^#{value}.*")}
    result
  end

  def printable
    result = []
    @entries.each_pair {|key, val| result.push "[#{key}] \"#{val}\""}
    result.join "\n"
  end

end