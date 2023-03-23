require_relative './lib/transaction.rb'

account_holder = AccountHolder.new("2023-03-22", 0, 0, 0)
account_holder.add_credit("2023-03-22", 100)
account_holder.withdraw("2023-03-23", 50)
account_holder.print_statement
