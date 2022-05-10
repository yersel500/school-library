require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

  private

  def of_age?
    p @age >= 18
  end

  public

  def can_use_services?
    true if of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
