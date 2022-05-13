require './book'
require './teacher'
require './student'

class App
  attr_reader :books, :people

  def initialize
    @books = []
    @people = []
  end

  def list_of_books
    @books
  end

  def list_of_people
    @people
  end

  def create_book(title, author)
    @books << Book.new(title, author)
  end

  def create_teacher(age, specializations, name)
    @people << Teacher.new(age, specializations, name)
  end

  def create_student(age, classroom, name, parent_permission)
    @people << Student.new(age, classroom, name, parent_permission: parent_permission)
  end

  def create_rental(date, book_id, person_id)
    @rentals << Rental.new(date, @books[book_id], @people[person_id])
  end
end

my_app = App.new
my_app.create_book('Algebra', 'Baldor')
my_app.create_book('Trigonometry', 'Bigote')
p my_app.books
my_app.create_teacher(35, 'programming', 'Bray')
my_app.create_teacher(24, 'bussiness', 'Diana')
p my_app.people