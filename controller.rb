require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rpsgame.rb')

get '/rpsgame/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  return RPSGame.check_win(hand1, hand2).to_s
end
