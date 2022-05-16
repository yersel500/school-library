class CreateBook
  def initialize(library)
    @library = library
  end

  def create_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    @library.create_book(title, author)
    puts "Book created successfully\n"
  end
end
