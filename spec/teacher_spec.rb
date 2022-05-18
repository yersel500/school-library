require_relative '../teacher'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new('Maths', 45, name: 'Jose', parent_permission: true)
  end

  it 'Verify the name of teacher' do
    expect(@teacher.name).to eq('Jose')
  end

  it 'Verify the age of teacher' do
    expect(@teacher.age).to eq(45)
  end

  it 'Verify specialization' do
    expect(@teacher.specialization).to eq('Maths')
  end
end
