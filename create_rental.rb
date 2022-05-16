require './list_books'
require './list_people'

class CreateRental
  def initialize(library)
    @library = library
  end

  def create_rental
    puts 'Select a book from the following list by number'
    ListBooks.new(@library).list_of_books
    book_idx = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    ListPeople.new(@library).list_of_people
    person_idx = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    @library.create_rental(date, book_idx, person_idx)
    puts "Rental created successfully\n"
  end
end
