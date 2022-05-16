class CreatePerson
  def initialize(library)
    @library = library
  end

  def create_person()
    puts 'Do you want to create a student(1) or a teacher(2)?'
    type_person = gets.chomp.to_i
    case type_person
    when 1
      create_student(@library)
    when 2
      create_teacher(@library)
    end
  end
end
