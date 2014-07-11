=begin
  Project Euler Plus Problem 3
  Has some issues...still need to work on getting large inputs to work
  Currently I get all primes up to the value using a Sieve...but this takes up too much memory
  Especially since the max value is 10**12
  I dunno what to do...hopefully I get time to come back and fix this later, still working on it.
=end

def primesUpTo(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  s.compact
end


T = gets.chomp.to_i
N = []
max = 0
for i in 0..T-1
    N.push(gets.chomp.to_i)
    max = N[i] if N[i] > max
end

primes = primesUpTo(max)


N.each do |n|
    if primes.include?(n)
        maxFactor = n
    else
        primes.each do |p|
            break if p >= n
            if n%p == 0
                maxFactor = p 
            end
        end
    end
    puts maxFactor
end

