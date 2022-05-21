require './person'

class Student < Person
  attr_reader :classroom, :category

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @category = 'Student'
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classsroom.students.include?(self)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'name' => @name,
      'age' => @age,
      'parent_permission' => @parent_permission,
      'id' => @id
    }.to_json(*args)
  end
end
