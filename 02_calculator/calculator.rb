def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  sum = 0
  numbers.each { |x| sum += x }
  sum
end

def mul(numbers)
  return 0 if numbers.length == 0
  mul = 1
  numbers.each { |x| mul *= x }
  mul
end

def pow(x, y)
  x ** y
end

def fac(n)
  return 1 if n == 0
  f = 1
  n.times { |i| f *= i + 1}
  f
end