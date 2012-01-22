class Account
  attr_accessor :balance
  def balance=(amount)
    @balance = amount.to_i
  end
end
