requiere './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length > 10
      @nameable.correct_name.chars.map.with_index { |char, index| char if index < 3 }
    else
      @nameable.correct_name
    end
  end
end
