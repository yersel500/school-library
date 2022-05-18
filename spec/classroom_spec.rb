require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Room 101')
  end

  it 'Tests if Class has a label' do
    expect(@classroom.label).to eq('Room 101')
  end

  it 'Tests if it has an empty array of students' do
    expect(@classroom.students).to eq([])
  end

  it 'Tests if it adds students correctly' do
    student = Student.new('Room 101', 21, name: 'Jacob', parent_permission: true)
    @classroom.add_student(student)
    expect(@classroom.students).to eq([student])
  end
end
