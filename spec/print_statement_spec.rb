# frozen_string_literal: true

require 'transaction'
require 'simplecov'
SimpleCov.start

RSpec.describe AccountHolder do
  describe '#print_statement' do
    it 'prints the transaction history for a single credit transaction' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
      account_holder.add_credit('01-03-2023', 100)
      expect do
        account_holder.print_statement
      end.to output("date       ||credit  ||debit   ||balance \n01-03-2023|| 100|| || 100.00 \n").to_stdout
    end
  end

  it 'prints the transaction history for a empty balance' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    expect { account_holder.print_statement }.to output("date       ||credit  ||debit   ||balance \n01-03-2023||       ||        ||0.00\n").to_stdout
  end

  it 'prints the transaction history for a single credit transaction with floating point' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    account_holder.add_credit('01-03-2023', 100.11)
    expect do
      account_holder.print_statement
    end.to output("date       ||credit  ||debit   ||balance \n01-03-2023|| 100.11|| || 100.11 \n").to_stdout
  end

  it 'prints the transaction history for a credit and debit     transaction' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    account_holder.add_credit('01-03-2023', 100)
    account_holder.withdraw('02-03-2023', 50)
    expect do
      account_holder.print_statement
    end.to output("date       ||credit  ||debit   ||balance \n02-03-2023|| || 50|| 50.00 \n01-03-2023|| 100|| || 100.00 \n").to_stdout
  end

  it 'prints the transaction history for a credit and debit  transaction' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    account_holder.add_credit('01-03-2023', 100)
    account_holder.add_credit('01-03-2023', 10)
    account_holder.withdraw('02-03-2023', 50)
    expect do
      account_holder.print_statement
    end.to output("date       ||credit  ||debit   ||balance \n02-03-2023|| || 50|| 60.00 \n01-03-2023|| 10|| || 110.00 \n01-03-2023|| 100|| || 100.00 \n").to_stdout
  end

  it 'prints the transaction history for a credit and debit     transaction' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    account_holder.add_credit('31-02-2023', 100)
    account_holder.add_credit('01-03-2023', 10)
    account_holder.withdraw('02-03-2023', 50)
    account_holder.withdraw('03-03-2023', 10)
    expect do
      account_holder.print_statement
    end.to output("date       ||credit  ||debit   ||balance \n03-03-2023|| || 10|| 50.00 \n02-03-2023|| || 50|| 60.00 \n01-03-2023|| 10|| || 110.00 \n31-02-2023|| 100|| || 100.00 \n").to_stdout
  end

  it 'prints the transaction history for a credit and debit     transaction' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 100)
    account_holder.add_credit('01-03-2023', 100)
    account_holder.withdraw('02-03-2023', 50)
    expect do
      account_holder.print_statement
    end.to output("date       ||credit  ||debit   ||balance \n02-03-2023|| || 50|| 150.00 \n01-03-2023|| 100|| || 200.00 \n").to_stdout
  end

  it 'returns a negative balance when insufficient funds' do
    account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    account_holder.withdraw('02-03-2023', 50)
    expect do
      account_holder.print_statement
    end.to output("date       ||credit  ||debit   ||balance \n02-03-2023|| || 50|| -50.00 \n").to_stdout
  end
end


