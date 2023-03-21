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


  def printStatement
    puts "date       ||credit  ||debit   ||balance "
   @transactions.reverse.each do |transaction|
    puts "#{transaction[:date]}, #{transaction[:credit]}, #{transaction[:debit]}, #{transaction[:balance]}, \n"
    end 
  end
end

