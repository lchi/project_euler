-- Lua script for problem 8
-- projecteuler.net/problem=8

io.input('p8_data')
max = 0
arr = {}
counter = 1
c = io.read(1)
while c do
  n = tonumber(c)
  if not n then
    break
  end
  arr[math.mod(counter, 5)] = n
  if counter > 4 then
    sum = 1
    for i=0, 4 do
      sum = sum * arr[tonumber(i)]
    end
    if sum > max then
      max = sum
    end
  end
  c = io.read(1)
  counter = counter + 1
end

print(max)
