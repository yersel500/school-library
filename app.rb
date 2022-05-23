require './book'
require './teacher'
require './student'
require './rental'
require './person'
require 'json'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def parse_data
    JSON.parse(File.read('data.json')) if File.exist?('data.json')
  end

  def load_books
    if File.exist?('data.json')
      data = JSON.parse(File.read('data.json'))
      data['books'].each do |book|
        @books << Book.new(book['title'], book['author'])
      end
    else
      []
    end
  end

  def load_people
    data = parse_data
    data['people'].each do |person|
      case person['json_class']
      when 'Student'
        student = Student.new(person['age'], nil, person['name'], parent_permission: person['parent_permission'])
        student.id = person['id']
        @people << student
      when 'Teacher'
        teacher = Teacher.new(person['age'], person['specialization'], person['name'])
        teacher.id = person['id']
        @people << teacher
      end
    end
  end

  def load_rentals
    data = parse_data
    data['rentals'].each do |rental|
      date = rental['date']
      person = @people.find { |people| people.id == rental['person_id'] }
      book = @books.find { |books| books.title == rental['book_title'] }
      @rentals << Rental.new(date, book, person)
    end
  end

  def load_files
    load_books
    load_people
    load_rentals
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

  def create_rental(date, book_idx, person_idx)
    @rentals << Rental.new(date, @books[book_idx], @people[person_idx])
  end

  def list_rentals_byid(person_id)
    @rentals.select { |rent| rent.person.id == person_id }
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'books' => @books,
      'people' => @people,
      'rentals' => @rentals
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end

  def save_files()
    File.write('data.json', JSON.generate(App))
  end
end
