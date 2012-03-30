#!/usr/bin/env ruby

fn1, fn2 = 1, 1
fn = 0
sum = 0
loop do
  fn = fn1 + fn2
  fn2 = fn1
  fn1 = fn
  break if fn > 4000000
  sum = sum + fn if fn.even?
end

puts sum
