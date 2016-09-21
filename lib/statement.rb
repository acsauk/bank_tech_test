require_relative 'account'

class Statement

  def print_statement
    header = "date || credit || debit || balance"

    header

    account.activity.each do |element|
      values = element.values
      date = "#{values[0]} || "
      deposit = "#{values[1]} || "
      withdraw = "#{values[2]} || "
      balance = "#{values[3]}"
      puts date + deposit + withdraw + balance
    end
  end

end
