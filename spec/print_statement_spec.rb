require 'transaction'

RSpec.describe AccountHolder do
  describe '#print statement' do
    it 'prints the transaction history' do
      accountHolder = AccountHolder.new('01-03-2023', nil, nil, 0)
      accountHolder.addCredit('01-03-2023', 100)
      expect { accountHolder.printStatement }.to output("date       ||credit  ||debit   ||balance \n01-03-2023, 100, , 100.0, \n").to_stdout
    end

    it 'prints the transaction history' do
      accountHolder = AccountHolder.new('01-03-2023', nil, nil, 0)
      accountHolder.addCredit('01-03-2023', 100)
      accountHolder.withdraw('02-03-2023', 50)
      expect { accountHolder.printStatement }.to output("date       ||credit  ||debit   ||balance \n02-03-2023, , 50, 50.0, \n01-03-2023, 100, , 100.0, \n").to_stdout
    end

    it 'prints the transaction history' do
      accountHolder = AccountHolder.new('01-03-2023', nil, nil, 100)
      accountHolder.withdraw('02-03-2023', 50)
      expect { accountHolder.printStatement }.to output("date       ||credit  ||debit   ||balance \n02-03-2023, , 50, 50.0, \n").to_stdout
    end
  end
end
