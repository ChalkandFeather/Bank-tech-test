# frozen_string_literal: true
# Accountholder class holds methods and values relating to individual's account activity 

class AccountHolder
  attr_accessor :date, :credit, :debit, :balance, :transactions

  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
    @transactions = []
  end

  def add_credit(date, amount)
    new_balance = @balance += amount.to_f
    transaction = { date: date, credit: amount, debit: nil, balance: new_balance }
    @transactions << transaction
    @balance = new_balance
  end

  def withdraw(date, amount)
    new_balance = (@balance - amount).round(2)
    transaction = { date: date, credit: nil, debit: amount, balance: new_balance }
    @transactions << transaction
    @balance = new_balance
  end

  def print_statement
      puts 'date       ||credit  ||debit   ||balance '
    if @transactions.empty?
      puts "#{@date}||       ||        ||#{sprintf('%.2f', @balance)}"
    else
    @transactions.reverse.each do |transaction|
      puts "#{transaction[:date]}|| #{transaction[:credit]}|| #{transaction[:debit]}|| #{sprintf('%.2f', transaction[:balance])} \n"
    end
  end
end
end

