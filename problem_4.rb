# calculate largest pallindrome product of two 3-digit numbers

class Result
  attr_accessor :a, :b, :pallindrome

  def initialize(a, b, pallindrome)
    @a, @b, @pallindrome = a, b, pallindrome
  end

  def to_s
    "#{@a}*#{@b} = #{@pallindrome}"
  end

end

def is_pallindrome(number)
  number_as_string = number.to_s
  low, high = 0, number_as_string.length - 1

  while low <= high
    if number_as_string[low] != number_as_string[high]
      break
    end
    low += 1
    high -= 1
  end

  # low will be >= high if we made it all the way through...
  puts number if low >= high
  low >= high
end

result = Result.new 0, 0, 0

(100...1000).to_a.each do |a|
  (a...1000).to_a.each do |b|
    if is_pallindrome(p = a*b) and p > result.pallindrome
      result = Result.new a, b, p
    end
  end
end

puts result
