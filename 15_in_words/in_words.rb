module InWords

  def in_words
    get_trillions self
  end

  def get_ones(num)
    str = ''
    case num % 10
      when 0 then str = 'zero'
      when 1 then str = 'one'
      when 2 then str = 'two'
      when 3 then str = 'three'
      when 4 then str = 'four'
      when 5 then str = 'five'
      when 6 then str = 'six'
      when 7 then str = 'seven'
      when 8 then str = 'eight'
      when 9 then str = 'nine'
      else
    end
    str
  end

  def get_tens(num)
    return get_ones num if num < 10
    str = ''
    case num % 100
      when 10 then str = 'ten'
      when 11 then str = 'eleven'
      when 12 then str = 'twelve'
      when 13 then str = 'thirteen'
      when 14 then str = 'fourteen'
      when 15 then str = 'fifteen'
      when 16 then str = 'sixteen'
      when 17 then str = 'seventeen'
      when 18 then str = 'eighteen'
      when 19 then str = 'nineteen'
      else
        case num % 100 - num % 10
          when 20 then str = 'twenty'
          when 30 then str = 'thirty'
          when 40 then str = 'forty'
          when 50 then str = 'fifty'
          when 60 then str = 'sixty'
          when 70 then str = 'seventy'
          when 80 then str = 'eighty'
          when 90 then str = 'ninety'
          else
        end
        str += " #{get_ones num}" if num % 10 > 0
    end
    str
  end

  def get_hundreds(num)
    return get_tens num if num < 100
    if (num % 100) == 0
      "#{get_ones num / 100} hundred"
    else
      "#{get_ones num / 100} hundred #{get_tens num % 100}"
    end
  end

  def get_thousands(num)
    return get_hundreds num if num < 1000
    if num % 1000 == 0
      "#{get_hundreds num / 1000} thousand"
    else
      "#{get_hundreds num / 1000} thousand #{get_hundreds num % 1000}"
    end
  end

  def get_millions(num)
    return get_thousands num if num < 1_000_000
    if num % 1_000_000 == 0
      "#{get_thousands num / 1_000_000} million"
    else
      "#{get_thousands num / 1_000_000} million #{get_thousands num % 1_000_000}"
    end
  end

  def get_billions(num)
    return get_millions num if num < 1_000_000_000
    if num % 1_000_000_000 == 0
      "#{get_millions num / 1_000_000_000} billion"
    else
      "#{get_millions num / 1_000_000_000} billion #{get_millions num % 1_000_000_000}"
    end
  end

  def get_trillions(num)
    return get_billions num if num < 1_000_000_000_000
    if num % 1_000_000_000_000 == 0
      "#{get_billions num / 1_000_000_000_000} trillion"
    else
      "#{get_billions num / 1_000_000_000_000} trillion #{get_billions num % 1_000_000_000_000}"
    end
  end

end

class Fixnum
  include InWords
end

class Bignum
  include InWords
end