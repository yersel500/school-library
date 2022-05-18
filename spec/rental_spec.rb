require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe Rental do
    before(:each) do
        @person = Person.new(40, name:'Leonor')
        @book = Book.new('The creation of everything', 'Kryotnik Pyotr')
        @rental = Rental.new('2022/05/18', @book, @person)
    end

    it 'Tests if the date is correct' do
        expect(@rental.date).to eq('2022/05/18')
    end

    it 'Tests if the person is correct' do
        expect(@rental.person).to eq(@person)
    end

    it 'Tests if the book is correct' do
        expect(@rental.book).to eq(@book)
    end
    
    it 'Tests if @rental object is an instance of Rental' do
        expect(@rental).to be_an_instance_of Rental
    end
end
