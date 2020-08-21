require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.turn_to_defend)
    erb :attack
  end

  get '/switch' do
    @game.turn_switcher
    redirect '/play'
  end

  run! if app_file == $0
end
