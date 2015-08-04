require 'rspec'
require './lib/cash_register_tdd'

describe CashRegister do
  it 'should be a cash register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should start with a total of 0.00' do
      expect(subject.total).to eq(0.00)
    end

    it 'should return the purchase amount' do
      subject.purchase(3.78)
      expect(subject.total).to eq(3.78)
    end
  end

  describe '#purchase(amount)' do
    it 'should add purchases to the total' do
      subject.purchase(3.78)
      expect(subject.total).to eq(3.78)
    end
  end

  describe '#pay(amount)' do
    it 'should return change owed' do
      subject.purchase(3.78)
      subject.pay(5.00)
      expect(subject.total).to eq(1.22)
    end

    it 'should return amount owed if total owed > amount paid' do
      subject.purchase(9.00)
      subject.pay(5.00)
      expect(subject.total).to eq(4.00)
    end
  end
end
