# find the sum of all primes < 2 milliom

class Fixnum

  def prime?
    # primes must be > 1
    return false if self <= 1

    (2..(self.to_i ** 0.5)).to_a.each do |i|
      return false if self.gcd(i) > 1
    end

    true
  end

end

sum = 5
(5...2000000).to_a.each do |n|
  # constant time optimizations...
  if ((n % 2) > 0) and ((n % 3) > 0) and n.prime?
    #puts "#{n} is prime"
    sum += n
  end
end

puts sum
