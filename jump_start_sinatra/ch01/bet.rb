require 'sinatra'
require 'sinatra/reloader' if development?

get '/bet/:stake/on/:number' do
  stake = params[:stake].to_i
  number = params[:number].to_i
  roll = rand(6) + 1
  if number == roll
    "It landed on #{roll}, congrats you won #{6*stake} chips!"
  else
    "Sorry, it landed on #{roll}, you lost #{stake} chips!"
  end
end



