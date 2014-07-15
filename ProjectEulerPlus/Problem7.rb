=begin
Project Euler Plus Problem 7

Program to get the Nth prime number (of T inputs)

Uses caching to make it faster

Written By Alan Bishop 7/14/14
=end


def getNPrimes(max)
    primes = Array.new
    primes.push(2)
    n = 3
    while primes.size < max
        isPrime = true
        for i in 0..primes.size-1
            if(n%primes[i] == 0)
                isPrime = false
                break
            end
        end
        if isPrime
            primes.push(n)
        end
        n += 1
    end
    primes
end

T = gets.chomp.to_i
N = []
max = 0
for i in 0..T-1
    N.push(gets.chomp.to_i)
    max = N[i] if N[i] > max
end

primes = getNPrimes(max)

#puts primes

for i in 0..T-1
    puts primes[N[i]-1]
end



