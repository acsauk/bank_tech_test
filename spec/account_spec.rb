require 'spec_helper'

describe Account do

  subject(:account) { described_class.new }

  deposit_amount = 10
  withdraw_amount = 5

  it 'displays clients current balance' do
    expect(account.display_balance).to eq 0
  end

  it 'increases client balance by specified amount' do
    account.deposit(deposit_amount)
    expect(account.display_balance).to eq deposit_amount
  end

  it 'decreases client balance by specified amount' do
    account.deposit(deposit_amount)
    account.withdraw(withdraw_amount)
    expect(account.display_balance).to eq 5
  end

  it 'should add details of deposit to account activity after each deposit' do
    expect{ account.deposit(deposit_amount) }.to change{ account.activity }
    expect(account.activity[0][:deposit]).to eq 10
    expect(account.activity[0][:date]).to eq Date.today.to_s
  end

  it 'should add details of withdrawal to account activity after each withdrawal' do
    expect{ account.withdraw(withdraw_amount) }.to change{ account.activity }
    expect(account.activity[0][:withdraw]).to eq 5
    expect(account.activity[0][:date]).to eq Date.today.to_s
  end

end
