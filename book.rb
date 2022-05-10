class Book
  attr_accessor :title, :autor
  attr_reader :rentals

  def initialize(title, autor)
    @title = title
    @autor = autor
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
  end
end
