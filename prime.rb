def prime_numbers(n)
  if n == 2 
    puts "#{n} is a prime number"
  elsif n % 2 == 0
    puts "#{n} is not a prime number"
  else
    puts "#{n} is a prime number"
  end
end


prime_numbers(2)
prime_numbers(8)
prime_numbers(7)
