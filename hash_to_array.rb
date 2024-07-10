def collect_user_input
  user_hash = {}

  5.times do |i|
    print "Enter a key"
    key = gets.chomp
    print "Enter a value for your key"
    value = gets.chomp
    user_hash[key] = value
  end

  print_hash(user_hash)

end

def print_hash(h)
  print h.keys
  print h.values
end

collect_user_input