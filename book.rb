class Book
  attr_accessor :title, :autor
  attr_reader :rentals

  def initialize(title, autor)
    @title = title
    @autor = autor
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
