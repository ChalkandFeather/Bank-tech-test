class AccountHolder
  attr_accessor :date, :credit, :debit, :balance, :transactions
  
  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
    @transactions = []
  end

  def addCredit(date, amount)
    new_balance = @balance += amount.to_f
    transaction = {date: date, credit: amount, debit: nil, balance: new_balance}
    @transactions << transaction
    @balance = new_balance
  end


    def withdraw(date, amount)
      new_balance = @balance -= amount.to_f
      transaction = {date: date, credit: nil, debit: amount, balance: new_balance}
      @transactions << transaction
      @balance = new_balance
    end
  end



# def veiwDebit(debit)
#    @balance -= debit
#   return 

#   Yes, you can use Ruby's Hash.new to continually create new hashes to represent bank transactions with the desired information. Here's an example of how you can use Hash.new to represent a transaction and update the balance:

#   ruby
#   Copy code
#   # initialize the balance to 0
#   balance = 0
  
#   # create an empty transaction hash
#   transaction = Hash.new
  
#   # set the values for the transaction
#   transaction[:date] = '2023-03-21'
#   transaction[:credit] = 100
#   transaction[:debit] = 0
#   transaction[:balance] = balance + transaction[:credit] - transaction[:debit]
  
#   # update the balance
#   balance = transaction[:balance]
  
#   # print the transaction and the updated balance
#   puts "Transaction: #{transaction}"
#   puts "Updated balance: #{balance}"