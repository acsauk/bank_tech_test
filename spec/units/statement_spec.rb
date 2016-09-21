require 'spec_helper'

describe Statement do

  subject(:statement) { described_class.new }
  let(:account) { Account.new }
  let(:activity) { {:date=>"17/19/2016", :deposit=>"10", :withdraw=>"0", :currernt_balance=>"10"} }

  it 'should print a users account activity in a table format' do
    account.deposit(10)
    expect(statement.print_statement).to eq
    "date || credit || debit || balance
    17/19/2016 || 10 || 5 || 5"
  end

end
