require 'rspec'
require './lib/tdd_calculator'

describe Calculator do
  it 'should be a calculator' do
    expect(subject).to be_a(Calculator)
  end

  describe '#total' do
    it 'returns 0.00 for new calculators' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#add(number)' do
    it 'can add positive numbers to total' do
      subject.add(5)
      expect(subject.total).to eq(5)
    end

    it 'can add negative numbers' do
      subject.add(-5)
      expect(subject.total).to eq(-5)
    end
  end

  describe '#subtract(number)' do
    it 'can subtract positive numbers' do
      subject.subtract(5)
      expect(subject.total).to eq(-5)
    end

    it 'can subtract negative numbers' do
      subject.subtract(-5)
      expect(subject.total).to eq(5)
    end
  end

  describe '#multiply(number)' do
    it 'can multiply by zero' do
      subject.multiply(0)
      expect(subject.total).to eq(0)
    end

    it 'can add a number, then multiply by one' do
      subject.add(5)
      subject.multiply(1)
      expect(subject.total).to eq(5)
    end

    it 'can add a number, then multiply by a number' do
      subject.add(5)
      subject.multiply(5)
      expect(subject.total).to eq(25)
    end
  end
end
