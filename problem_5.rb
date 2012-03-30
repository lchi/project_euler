#!/usr/bin/env ruby

num = 20
loop do
  20.times do |x|
    x = x+1
    break if num % x != 0
    if x == 20
      puts num
    end
  end
  num += 20
end
