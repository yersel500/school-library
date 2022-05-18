require_relative '../book'

describe Book do
  context 'Testing Book class' do
    before(:each) do
      title = 'Rich Dad Poor Dad'
      author = 'Robert Kiyosaki'
      @book = Book.new(title, author)
    end
    it 'Verify title' do
      expect(@book.title).to eq('Rich Dad Poor Dad')
    end

    it 'Verify author' do
      expect(@book.author).to eq('Robert Kiyosaki')
    end

    it 'Verify rental array' do
      expect(@book.rentals).to eq([])
    end
  end
end
