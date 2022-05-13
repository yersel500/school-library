require './app'

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

def create_person(library)
  puts 'Do you want to create a student(1) or a teacher(2)?'
  type_person = gets.chomp.to_i
  case type_person
  when 1
    create_student(library)
  when 2
    create_teacher(library)
  end
end

def create_student(library)
  print 'Age:'
  age = gets.chomp.to_i
  print 'Name:'
  name = gets.chomp
  print 'Has parent permission?[y/n]:'
  permission = gets.chomp
  case permission
  when 'y'
    parent_permission = true
  when 'n'
    parent_permission = false
  end
  library.create_student(age, 'default', name, parent_permission)
  puts "Person created successfully\n"
end

def create_teacher(library)
  print 'Age:'
  age = gets.chomp.to_i
  print 'Name:'
  name = gets.chomp
  print 'Specialization:'
  specialization = gets.chomp
  library.create_teacher(age, specialization, name)
  puts "Person created successfully\n"
end

def create_book(library)
  print 'Title:'
  title = gets.chomp
  print 'Author:'
  author = gets.chomp
  library.create_book(title, author)
  puts "Book created successfully\n"
end

def create_rental(library)
  puts 'Select a book from the following list by number'
  list_of_books(library)
  book_idx = gets.chomp.to_i
  puts 'Select a person from the following list by number (not id)'
  list_of_people(library)
  person_idx = gets.chomp.to_i
  print 'Date: '
  date = gets.chomp
  library.create_rental(date, book_idx, person_idx)
  puts "Rental created successfully\n"
end

def list_rentals_byid(library)
  print 'ID of person: '
  person_id = gets.chomp.to_i
  library.list_rentals_byid(person_id).each_with_index do |rental, idx|
    puts "#{idx}) Date: #{rental.date}, Book #{rental.book.title} by #{rental.book.author} "
  end
end

def list_of_books(library)
  library.list_of_books.each_with_index do |book, index|
    puts "#{index}) Title:#{book.title} Author: #{book.author}"
  end
end

def list_of_people(library)
  library.list_of_people.each_with_index do |p, index|
    puts "#{index}) [#{p.category}] Name:#{p.name} ID: #{p.id} Age:#{p.age}"
  end
end

def execute(library)
  loop do
    case options
    when 1
      list_of_books(library)
    when 2
      list_of_people(library)
    when 3
      create_person(library)
    when 4
      create_book(library)
    when 5
      create_rental(library)
    when 6
      list_rentals_byid(library)
    else
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
