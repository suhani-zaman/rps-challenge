require "sinatra"
require "sinatra/base"
require "sinatra/reloader" if development?
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  
  post '/names' do
    session[:player] = params[:player]
    redirect '/play'
  end
  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/selection' do
    @choice = params[:choice]
    game = Game.new
    @result = game.result(@choice)
    erb :result
  end

  run! if app_file == $0
end