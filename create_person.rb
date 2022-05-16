require './create_student'
require './create_teacher'

class CreatePerson
  def initialize(library)
    @library = library
  end

  def create_person()
    puts 'Do you want to create a student(1) or a teacher(2)?'
    type_person = gets.chomp.to_i
    case type_person
    when 1
      CreateStudent.new(@library).create_student
    when 2
      CreateTeacher.new(@library).create_teacher
    end
  end
end
