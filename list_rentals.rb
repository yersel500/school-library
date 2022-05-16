class ListRentals
  def initialize(library)
    @library = library
  end

  def list_rentals_byid
    print 'ID of person: '
    person_id = gets.chomp.to_i
    @library.list_rentals_byid(person_id).each_with_index do |rental, idx|
      puts "#{idx}) Date: #{rental.date}, Book #{rental.book.title} by #{rental.book.author} "
    end
  end
end
