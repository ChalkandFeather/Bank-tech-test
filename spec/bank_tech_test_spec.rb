require 'transaction'

RSpec.describe AccountHolder do
  describe '#addCredit' do
    it 'adds credit to the balance' do
      account_holder = AccountHolder.new('2022-01-01', nil, nil, 0)
      account_holder.addCredit('2022-01-01', 100)
      expect(account_holder.balance).to eq(100)
    end
  end
end