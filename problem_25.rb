#!/usr/bin/env ruby

fn1, fn2 = 1, 1
fn = 0
count = 3
loop do
  fn = fn1 + fn2
  fn2 = fn1
  fn1 = fn
  break if fn.to_s.split("").size >= 1000
  count = count + 1
end

puts count
puts fn
