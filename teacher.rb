require './person'

class Teacher < Person
  def initialize(specialization)
    super
    @id = 2
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
