require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry-byebug'

# ROUTES

# GET & POST
# VERB => operations
# GET ==> retrieve information ==> R
# POST ==> send information ==> C
# PATCH / PUT ==> update information ==> U
# DELETE ==> delete information ==> D

# LIST ALL MY POKEMONS ✅
get '/' do # this is the C
  @all_pokes = Pokemon.all # retrieve from db M
  # HTML + Ruby
  # Embedded Ruby
  erb :index # passing it to V
end

get '/meals/:id' do # :id ==> dynamic params
  "display meal #{params[:id]}"
end

# SHOW ONE POKEMON ✅
get '/pokemon/:id' do
  @poke = Pokemon.find(params[:id])
  erb :view
end

get '/new-pokemon' do
  erb :new
end

post '/create-pokemon' do
  new_poke = Pokemon.new(
    name: params['pokemon-name'],
    element: params['pokemon-element']
  )

  new_poke.save! if new_poke.valid?
  redirect "/pokemon/#{new_poke.id}"
end

# GET / POST ??
# where will the data come from?
# where should i pass the data to?
# how should i display it




