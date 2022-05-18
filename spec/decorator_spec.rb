require_relative '../decorator'
require_relative '../nameable'

describe Decorator do
  before(:each) do
    @decorator = Decorator.new('Killian')
  end

  it 'Tests if decorator has a neameable' do
    expect(@decorator.nameable).to eq('Killian')
  end
end
