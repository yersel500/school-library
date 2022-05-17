require './book'
require './teacher'
require './student'
require './rental'
require './person'

class App
  attr_reader :books, :people, :rentals

  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
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

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [books, people, rentals]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end
