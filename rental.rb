class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @book = book
    book.rentals << self

    @person = person
    person.rentals << self

    @date = date
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'date' => @date,
      'book_title' => @book.title,
      'person_id' => @person.id
    }.to_json(*args)
  end
end
