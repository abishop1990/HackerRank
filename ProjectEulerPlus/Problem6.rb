=begin
Project Euler+ Problem #6

Diff of sum of squares and square of sums for T inputs

Alan Bishop 7/10/14
=end

def getSumSquared(max)
    sumSquared = []
    sumSquared.push(0)
    for i in 1..max
        sumSquared.push(sumSquared[i-1] + i)
        sumSquared[i-1] = sumSquared[i-1] * sumSquared[i-1]
        #puts "sumSquared[#{i-1}]=#{sumSquared[i-1]}"
    end
    sumSquared[sumSquared.size-1] = sumSquared[sumSquared.size-1] * sumSquared[sumSquared.size-1]
    sumSquared
end

def getSquareSums(max)
    squareSums = []
    squareSums.push(0)
    for i in 1..max
        squareSums.push(squareSums[i-1] + (i*i))
    end
    squareSums
end

#I use this part way too much...generic
T = gets.chomp.to_i
N = []
max = 0
for i in 0..T-1
    N.push(gets.chomp.to_i)
    max = N[i] if N[i] > max
end

sumOfSquares = getSumSquared(max)
squareSums = getSquareSums(max)

for i in 0..T-1
    puts "#{sumOfSquares[N[i]]-squareSums[N[i]]}"
end

