=begin
Project Euler Plus Problem 13

Sums up big numbers, needs no other real explanation
Ruby makes this easy

Written By Alan Bishop 7/20/14
=end

N = gets.chomp.to_i
numbers = Array.new
sum = 0
for i in 0..N-1
    sum += gets.chomp.to_i
end

puts sum.to_s[0..9]
