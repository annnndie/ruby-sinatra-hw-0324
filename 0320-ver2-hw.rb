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

    choice = params[:choice]
    amount = params[:amount].to_i
  
    
    atm = ATM.new(0)
    if choice == "plus" 
      atm.deposit(amount)
    else choice == "minus"
      atm.withdraw(amount)
    end  
    


  erb :atm , locals:{balance: atm.balance}
end
