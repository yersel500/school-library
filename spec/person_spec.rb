require_relative '../person'

describe Person do
    before(:each) do
        @person = Person.new(20, name: 'Abraham', parent_permission: true)
end

it 'Testing age' do
    expect(@person.age).to eq(20)
end

it 'Testing name' do
    expect(@person.name).to eq('Abraham')
end

it 'Testing parent permission' do
    expect(@person.parent_permission).to eq(true)
end

it 'Testing id' do
    expect(@person.id).to be_truthy
end

it 'Testing rentals' do
    expect(@person.rentals).to eq([])
end

it 'Testing if can use services due to age or parent permission' do
    expect(@person.can_use_services?).to eq(true)
end

end