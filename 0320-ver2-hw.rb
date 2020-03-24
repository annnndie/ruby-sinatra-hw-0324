require 'sinatra'
require 'sinatra/reloader' if development?
require 'calc.rb'

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
