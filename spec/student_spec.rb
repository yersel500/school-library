require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new(nil, 17, name: 'Pedro', parent_permission: false)
  end

  it 'Verify the name of student' do
    expect(@student.name).to eq('Pedro')
  end

  it 'Verify the age of student' do
    expect(@student.age).to eq(17)
  end

  it 'Verify the parent permission' do
    expect(@student.parent_permission).to eq(false)
  end

  it 'Verify classroom' do
    expect(@student.classroom).to be_falsey
  end
end
