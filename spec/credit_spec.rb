require 'transaction'

RSpec.describe AccountHolder do
  describe '#addCredit' do
    it 'adds no credit to the balance' do
      account_holder = AccountHolder.new('2022-01-01', nil, nil, 0)
      account_holder.addCredit('2022-01-01', nil)
      expect(account_holder.balance).to eq(0)
    end

    it 'adds single digit credit to the balance' do
      account_holder = AccountHolder.new('2022-01-01', nil, nil, 0)
      account_holder.addCredit('2022-01-01', 1)
      expect(account_holder.balance).to eq(1)
    end


    it 'adds credit to the balance' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
      account_holder.addCredit('21-03-2023', 100)
      expect(account_holder.balance).to eq(100)
    end

    it 'adds credit with two decimal places to the balance' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
      account_holder.addCredit('21-03-2023', 100.01)
      expect(account_holder.balance).to eq(100.01)
    end

    it 'adds large credit with two decimal places to the balance' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
      account_holder.addCredit('21-03-2023', 57000.11)
      expect(account_holder.balance).to eq(57000.11)
    end
  end
end