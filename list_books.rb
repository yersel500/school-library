class ListBooks
  def initialize(library)
    @library = library
  end

  def list_of_books
    print @library.list_of_books
    @library.list_of_books.each_with_index do |book, index|
      puts "#{index}) Title:#{book.title} Author: #{book.author}"
    end
  end
end
