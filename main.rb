require './app'

def options
  puts "Welcome to School Library App\n
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
  puts 'Person created successfully'
end

def create_teacher(library)
  print 'Age:'
  age = gets.chomp.to_i
  print 'Name:'
  name = gets.chomp
  print 'Specialization:'
  specialization = gets.chomp
  library.create_teacher(age, specialization, name)
  puts 'Person created successfully'
end

def create_book(library)
  print 'Title:'
  title = gets.chomp
  print 'Author:'
  author = gets.chomp
  library.create_book(title, author)
end

def create_rental(library)
  puts 'Select a book from the following list by number'
  p library.list_of_books
  book_idx = gets.chomp.to_i
  puts 'Select a person from the following list by number (not id)'
  p library.list_of_people
  person_idx = gets.chomp.to_i
  print 'Date: '
  date = gets.chomp
  library.create_rental(date, book_idx, person_idx)
end

def list_rentals_byid(library)
  print 'ID of person: '
  person_id = gets.chomp.to_i
  library.list_rentals_byid(person_id)
end

def execute(library)
  loop do
    case options
    when 1
      p library.list_of_books
    when 2
      p library.list_of_people
    when 3
      create_person(library)
    when 4
      create_book(library)
    when 5
      create_rental(library)
    when 6
      p list_rentals_byid(library)
    else
      break
    end
  end
end

def main
  library = App.new
  execute(library)
end

main
