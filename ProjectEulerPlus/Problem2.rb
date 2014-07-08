=begin
Project Euler Plus Problem #2 (Fib Numbers)

Basically expanded project euler problem 2, find even fib numbers 
at or below N.

Written By Alan Bishop 7/8/14

=end

def sumUpToNumber(arrayOfNums,n)
    arrayOfNums.select{ |x| x <= n}.inject(:+)
end
    
T = gets.chomp.to_i
N = Array.new
for i in 1..T
    N.push(gets.chomp.to_i)
end

#Get even fib numbers below N max
fibs = Array.new
fibPrev1 = 1
fibPrev2 = 1
fibCur = 0
while fibCur <= N.max do
    fibCur = fibPrev1 + fibPrev2
    if fibCur%2 == 0 
        fibs.push(fibCur)
    end
    fibPrev2 = fibPrev1
    fibPrev1 = fibCur
end

N.each{ |n| puts sumUpToNumber(fibs,n)}


