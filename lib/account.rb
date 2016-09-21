class Account

  attr_reader :activity

  def initialize
    @current_balance = 0
    @activity = []
  end

  def display_balance
    @current_balance
  end

  def deposit(amount)
    @current_balance += amount
    @activity << { date: Date.today.to_s, deposit: amount, withdraw: 0 ,
                   current_balance: @current_balance }
  end

  def withdraw(amount)
    @current_balance -= amount
    @activity << { date: Date.today.to_s, deposit: 0, withdraw: amount ,
                   current_balance: @current_balance }
  end


end
