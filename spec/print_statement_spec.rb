require 'transaction'

RSpec.describe AccountHolder do
  describe '#print_statement' do
    it 'prints the transaction history for a single credit transaction' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
      account_holder.add_credit('01-03-2023', 100)
      expect { account_holder.print_statement }.to output("date       ||credit  ||debit   ||balance \n01-03-2023|| 100|| || 100.0 \n").to_stdout
    end
  end

    it 'prints the transaction history for a credit and debit transaction' do
      account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
      account_holder.add_credit('01-03-2023', 100)
      account_holder.withdraw('02-03-2023', 50)
       expect {account_holder.print_statement }.to output("date       ||credit  ||debit   ||balance \n02-03-2023|| || 50|| 50.0 \n01-03-2023|| 100|| || 100.0 \n").to_stdout
     end
   end


    # it 'prints the transaction history for multiple credit and debit transactions' do
    #   account_holder = AccountHolder.new('01-03-2023', nil, nil, 0)
    #   account_holder.add_credit('01-03-2023', 100)
    #   account_holder.withdraw('02-03-2023', 50)
    #   account_holder.add_credit('03-03-2023', 100)
    #   expect { account_holder.print_statement }.to output("date       || credit || debit || balance \n03-03-2023 || 100.0  ||       || 150.0\n02-03-2023 ||        || 50.0  || 50.0\n01-03-2023 || 100.0  ||       || 100.0\n").to_stdout
    # end
 




  ### it 'prints transaction history with existing starting balance'
