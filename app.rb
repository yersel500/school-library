require './book'
require './teacher'
require './student'
require './rental'
require './person'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
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

  def create_teacher(age, specialization, name)
    @people << Teacher.new(age, specialization, name)
  end

  def create_student(age, classroom, name, parent_permission)
    @people << Student.new(age, classroom, name, parent_permission: parent_permission)
  end

  def create_rental(date, book_id, person_id)
    @rentals << Rental.new(date, @books[book_id], @people[person_id])
  end

  def list_rentals_byid(person_id)
    @rentals.select { |rent| rent.person.id == person_id }
  end
end

my_app = App.new
my_app.create_book('Algebra', 'Baldor')
my_app.create_book('Trigonometry', 'Bigote')
my_app.create_book('Economy', 'Soto')
p my_app.books
my_app.create_teacher(35, 'programming', 'Bray')
my_app.create_teacher(24, 'bussiness', 'Diana')
p my_app.people
my_app.create_rental('5/12/2022', 0, 1)
my_app.create_rental('5/12/2022', 2, 1)
my_app.create_rental('5/12/2022', 1, 0)
p my_app.rentals
p 'Rentals by id'
p my_app.list_rentals_byid(1)
