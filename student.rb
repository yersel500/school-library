require './person'

class Student < Person
  def initialize(classroom)
    super
    @id = 1
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
