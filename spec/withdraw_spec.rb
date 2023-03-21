require 'transaction'

RSpec.describe AccountHolder do
  describe '#withdraw' do
    it 'adds no credit to the balance' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
      account_holder.withdraw('01-03-2023', nil)
      expect(account_holder.balance).to eq(0)
    end

    # it ' Withdraws single digit credit from the balance' do
    #   account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    #   account_holder.balance(10)
    #   account_holder.withdraw('01-03-2023', 1)
    #   expect(account_holder.balance).to eq(9)
    # end


    # it 'withdraws funds from the balance' do
    #   account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
    #   account_holder.balance(200)
    #   account_holder.withdraw('21-03-2023', 100)
    #   expect(account_holder.balance).to eq(100)
    # end

    # it 'withdraws funds with two decimal places from the balance' do
    #   account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
    #   account_holder.balance(200.02)
    #   account_holder.withdraw('21-03-2023', 100.01)
    #   expect(account_holder.balance).to eq(100.01)
    # end

    # it 'adds large credit with two decimal places to the balance' do
    #   account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
    #   account_holder.withdraw('21-03-2023', 57000.11)
    #   expect(account_holder.balance).to eq(57000.11)
    # end

    # it 'adds no credit to the balance' do
    #   account_holder = AccountHolder.new('03-03-2023', nil, nil, 0)
    #   account_holder.withdraw('03-03-2023', nil)
    #   expect(account_holder.balance).to eq(0)
    # end

    # it 'adds single digit credit to the balance' do
    #   account_holder = AccountHolder.new('14-03-2023', nil, nil, 0)
    #   account_holder.withdraw('14-03-2023', 1)
    #   expect(account_holder.balance).to eq(1)
    # end


    # it 'adds credit to the balance' do
    #   account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
    #   account_holder.withdraw('21-03-2023', 100)
    #   expect(account_holder.balance).to eq(100)
    # end

    # it 'adds credit with two decimal places to the balance' do
    #   account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
    #   account_holder.withdraw('21-03-2023', 100.01)
    #   expect(account_holder.balance).to eq(100.01)
    # end

    # it 'adds large credit with two decimal places to the balance' do
    #   account_holder = AccountHolder.new('21-03-2023', nil, nil, 0)
    #   account_holder.withdraw('21-03-2023', 57000.11)
    #   expect(account_holder.balance).to eq(57000.11)
    # end
  end
end