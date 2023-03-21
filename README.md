# Technical Requirements

- Language: Ruby
- Testing: RSpec

CLI Setup

- rvm get stable
- rvm use ruby --latest --install -- default
- gem install bundler
- bundle init

git repo : https://github.com/ChalkandFeather/Bank-tech-test.git

# Prog Requirements

- Properties:  
  Funds: floating point integer with 2 decimal places.
  Transcation = Credit: funds 'deposited' into a single account.
  Transaction = Debit: funds 'withdrawn' from single account.
  Balance: Total funds in a single account at any given time. updated following credit/debit activity Only.
  Balance: Starts at 00.00
  Date: Assumes that a Formatted dd-mm-yyyy is generated with account activity.
  Statement: reflects user behaviour, providing clear table listing updated account details to reflect all credit and withdrawal activity of funds from a single bank account with time sensative balance details.
  Statement: Does not reflect dates where no activity has taken place.

  - Displays
    category (date, credit, debit, balance)
    reverse chronological order on statement

- Functions:

# Specification:

Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see....

# input | output as provided

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00

# Testing

credit account, with 00.00 balance
credit account only, with 100.00 balance
credit account only, with 100.01 balance

single credit same day
single withdrawal same day
mulitple credits same day
multiple withdarawls same day
single credit and single withdrawal same day
mutliple credits and single withdrawal
multiple withdrawals and single credits

# Edge cases

effect of withdrawal beyond available balance
date || credit || debit || balance
14/01/2023 || || 500.00 || -100.00

balance enquiry only, with 00.00 balance
balance enquiry only, with 100.00 balance
balance enquire only, with 100.01 balance

# User questions:

what format should the statement be presented e.g date
Is there a limit to whic a user can withdraw funds?
Can a user withdraw more than the balance? - set max
Is there a daily withdrawal limit?
