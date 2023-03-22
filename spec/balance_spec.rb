# frozen_string_literal: true

require 'transaction'
require 'simplecov'
SimpleCov.start

RSpec.describe AccountHolder do
  describe 'request balance with no credit/debit activity' do
    it 'displays balance only' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 100.0)
      expect do
        account_holder.print_statement
      .to output("date       ||credit  ||debit   ||balance \n01-03-2023|| || || 100.0 \n").to_stdout
      end
    end

    it 'displays balance only' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, -100.0)
      expect do
        account_holder.print_statement
      .to output("date       ||credit  ||debit   ||balance \n01-03-2023|| || || -100.0 \n").to_stdout
      end
    end
  end
end