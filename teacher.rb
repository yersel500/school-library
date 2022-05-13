require './person'

class Teacher < Person
  attr_reader :category

  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
    @category = 'Teacher'
  end

  def can_use_services?
    true
  end
end
