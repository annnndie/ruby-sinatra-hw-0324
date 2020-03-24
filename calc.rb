
class ATM
  def initialize(balance)
    @balance = balance
  end
  def deposit(amount)
    if amount >= 0
      @balance += amount
    end
  end
  def balance
    @balance
  end
  def withdraw(amount)
    if amount > 0 && amount < @balance
      @balance -= amount
    end
  end
end

