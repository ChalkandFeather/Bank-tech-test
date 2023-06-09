# frozen_string_literal: true
require'transaction'
require 'simplecov'
SimpleCov.start

RSpec.describe AccountHolder do
  describe '#withdraw' do
    it 'adds no credit to the balance' do
      account_holder = AccountHolder.new('01-03-2023', 0, 0, 0)
      account_holder.withdraw('01-03-2023', 0)
      expect(account_holder.balance).to eq(0)
    end

    it ' Withdraws single digit credit from the balance' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 10)
      account_holder.withdraw('01-03-2023', 1)
      expect(account_holder.balance).to eq(9.00)
    end

    it 'withdraws funds from the balance' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 200)
      account_holder.withdraw('21-03-2023', 100)
      expect(account_holder.balance).to eq(100.00)
    end

    it 'withdraws funds with two decimal places from the balance' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 100.01)
      account_holder.withdraw('21-03-2023', 100)
      expect(account_holder.balance).to eq(0.01)
    end

    it 'adds large credit with two decimal places to the balance' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 114_000.22)
      account_holder.withdraw('21-03-2023', 57_000.11)
      expect(account_holder.balance).to eq(57_000.11)
    end

    it 'clears balance to zero if all funds are withdrawn' do
      account_holder = AccountHolder.new('21-03-2023', nil, nil, 200.00)
      account_holder.withdraw('21-03-2023', 200.00)
      expect(account_holder.balance).to eq(0)
    end
  end
end
