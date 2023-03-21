require 'transaction'

RSpec.describe AccountHolder do
  describe '#print statement' do
    it 'prints the transaction history' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
      account_holder.add_credit('01-03-2023', 100)
      expect { account_holder.print_statement }.to output("date       ||credit  ||debit   ||balance \n01-03-2023, 100, , 100.0 \n").to_stdout
    end
  end

    it 'prints the transaction history' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
     account_holder.add_credit('01-03-2023', 100)
     account_holder.withdraw('02-03-2023', 50)
      expect {account_holder.print_statement }.to output("date       ||credit  ||debit   ||balance \n02-03-2023, , 50, 50.0 \n01-03-2023, 100, , 100.0 \n").to_stdout
    end
  end

  #   it 'prints the transaction history' do
  #    account_holder = AccountHolder.new('01-03-2023', nil, nil, 100)
  #     accountHolder.withdraw('02-03-2023', 50)
  #     expect { accountHolder.print_statement }.to output("date       ||credit  ||debit   ||balance \n02-03-2023, , 50, 50.0, \n").to_stdout
  #   end
  # end

