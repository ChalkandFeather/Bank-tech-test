# Technical Requirements

- Language: Ruby
- Testing: RSpec
- Linter: Ruby linter RuboCop
- Code coverage analysis tool: SimpleCov

CLI Quick Setup

- rvm get stable
- rvm use ruby --latest --install -- default
- gem install bundler
- bundle init

git repo : https://github.com/ChalkandFeather/Bank-tech-test.git

# Approach

I was keen to ensure that I understood the requirements of the program which I broke down into simple language and diagramed to create a flow.
Prioratised basic prog requirements.
I listed the requirements and stuck to prioties.
I began with a strict TDD process ensuring that unit testing was passing green before commiting to github.
I expolored possibilties for how to write the program and used web searches and previous programs to scaffold the codebase.
Utilised linters.
Step by step - followed the Makers response form- addressing area's highlighted by this process and correcting as advised.
Being forced to work in this manner has guided the process and forced changes that may otherwise have been overlooked or missed. It will inform me for better working practises in future projects.

I encountered a rounding error when applying the withdrawal of 100.00 from a 100.01 balance, which I updated using .round(2)
I was introduced to a number of new concepts during this review.
To expand this project, it would be advisable to follow the seperation of concerns principle for the methods within 'transactions.rb'

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

Credit account, with 00.00 balance
Credit account with existing balance of 100.00
credit account, with 100.01 balance
credit account with existing balance of balance 101.01
add multiple credits on same day

withdrawal from account only, with 100.00 balance
withdrawal from account only, with 100.01 balance

single credit same day
single withdrawal same day
mulitple credits same day
multiple withdarawls same day
single credit and single withdrawal same day
mutliple credits and single withdrawal
multiple withdrawals and single credits

# Edge cases & client questions:

effect of withdrawal beyond available balance
date || credit || debit || balance
14/01/2023 || || 500.00 || -100.00

balance enquiry only, with 00.00 balance
balance enquiry only, with 100.00 balance
balance enquire only, with 100.01 balance
balance enquire only, with -100.00 balance

# User questions:

should the statment display new lines with updated balance status for multiple credits added to the account on the same day.

Is there a limit to which a user can withdraw funds?
Can a user withdraw more than the balance? - set max?
Is there a daily withdrawal limit?
restrictions on dates for which a statment can be supplied?
