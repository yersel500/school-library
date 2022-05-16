class CreateTeacher
  def initialize(library)
    @library = library
  end

  def create_teacher
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp
    print 'Specialization:'
    specialization = gets.chomp
    @library.create_teacher(age, specialization, name)
    puts "Person created successfully\n"
  end
end
