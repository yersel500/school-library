require './app'
require './list_books'
require './create_person'
require './list_people'
require './create_book'
require './create_rental'
require './list_rentals'

def options
  puts "
  Please choose an option by enterin a number:\n
  1- List all books
  2- List all people
  3- Create a person
  4- Create a book
  5- Create a rental
  6- List all rental for a given id
  7- exit"

  gets.chomp.to_i
end

def execute(library)
  loop do
    case options
    when 1
      ListBooks.new(library).list_of_books
    when 2
      ListPeople.new(library).list_of_people
    when 3
      CreatePerson.new(library).create_person
    when 4
      CreateBook.new(library).create_book
    when 5
      CreateRental.new(library).create_rental
    when 6
      ListRentals.new(library).list_rentals_byid
    else
      puts 'Thanks for using this app'
      break
    end
  end
end

def main
  library = App.new
  puts "Welcome to School Library App\n"
  execute(library)
end

main
