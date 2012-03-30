#!/usr/bin/env ruby

f = File.new 'cipher1.txt'
while num = f.gets(',') do
  num.gsub!(/\D*/, '')

end
