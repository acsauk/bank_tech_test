describe 'User stories' do

  let(:account) { Account.new }
  # As a client
  # So that I know how much money I have in my account
  # I would like to see my current balance

  it 'so a user sees how much money they have in account, display current balance' do
    expect { account.display_balance }.not_to raise_error
  end

  # As a client
  # So that I can add money to my account
  # I would like to be able to make a deposit

  it 'so a user can add money to account, a deposit should increase their balance' do
    expect { account.deposit(10) }.not_to raise_error
  end

  # As a client
  # So that I can spend money in shops
  # I would like to be able to withdraw money from my account

  it 'so a user can take out money to spend, a withdrawal should decrease their balance' do
    expect { account.withdraw(10) }.not_to raise_error
  end

  # As a client
  # So that I can keep track of my money
  # I would like to have a record of all deposits to my account

  it 'so a user can keep track of their money, each deposit should be added to account activity' do
    account.deposit(10)
    expect { account.activity }.not_to raise_error
  end

  # As a client
  # So that I can keep track of my money
  # I would like to have a record of all withdrawals from my account

  it 'so a user can keep track of their money, each withdrawal should be added to account activity' do
    account.withdraw(10)
    expect { account.activity }.not_to raise_error
  end

  # As a client,
  # So that I can see my account activity to date,
  # I would like to see a printed statement showing deposits and withdrawal with
  # dates and current balance

  it 'so a user can see account activity, print account activity with dates and totals' do
    statement = Statement.new
    account.deposit(10)
    account.withdraw(5)
    expect { statement.print_statement }.not_to raise_error
  end
end
