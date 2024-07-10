def divisible
  storage = [*1..100]

  storage.filter do |num|
    num % 2 == 0 || num % 5 == 0 || num % 3 == 0
  end

end

print divisible