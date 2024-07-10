class Book
  attr_reader :author, :title, :count

  def initialize(author, title, count)
    @title = title
    @count = count
    @author = author
  end

  def to_s
    "author: #{author}, title: #{title}, count: #{count}"
  end
end

book_array = []
book_array << Book.new("Beatrice Potter", "Peter Rabbit", 25)
book_array << Book.new("Henry Fielding", "Tom Jones", 12)
book_array << Book.new("Bob Woodward", "All the President's Men", 30)

puts "Sorting alphabetically by author"
new_array = book_array.sort do |a, b|
  author1 = a.author.downcase
  author2 = b.author.downcase

  author1 <=> author2
  # if author1 > author2
  #   1
  # elsif author1 < author2
  #   -1
  # else
  #   0
  # end
end
puts new_array

puts "Sorting alphabetically by title"
sorted_by_title = book_array.sort do |a, b|
  a.title.downcase <=> b.title.downcase
end
puts sorted_by_title

puts "Sorting by number of copies"
sorted_by_count = book_array.sort do |a, b|
  a.count <=> b.count
end
puts sorted_by_count