require 'sinatra'
require 'sinatra/reloader' if development?

class ATM
  attr_reader :balance
  def initialize(balance)
     @balance = balance
  end
  def deposit(amount)
    if amount >= 0
      @balance += amount
    end
  end
  def withdraw(amount)
    if amount > 0 && amount < @balance
      @balance -= amount
    end
  end
end

get '/' do
  erb :index
end

post '/atm' do

  behavior = params[:behavior]
  amount = params[:amount].to_i
  
    
  atm = ATM.new(0)
  if behavior == "+" 
    atm.deposit(amount)
  else behavior == "-"
    atm.withdraw(amount)
  end  
    


  erb :atm , locals:{balance: atm.balance}
end
