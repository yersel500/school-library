class CreateStudent
  def initialize(library)
    @library = library
  end

  def create_student
    print 'Age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp
    print 'Has parent permission?[y/n]:'
    permission = gets.chomp
    case permission
    when 'y'
      parent_permission = true
    when 'n'
      parent_permission = false
    end
    @library.create_student(age, 'default', name, parent_permission)
    puts "Person created successfully\n"
  end
end
