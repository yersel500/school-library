class ListPeople
  def initialize(library)
    @library = library
  end

  def list_of_people
    @library.list_of_people.each_with_index do |p, index|
      puts "#{index}) [#{p.category}] Name:#{p.name} ID: #{p.id} Age:#{p.age}"
    end
  end
end
