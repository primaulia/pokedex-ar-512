# COMBO OF app.rb + router.rb + controller.rb

require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# ROUTES

# GET & POST
# GET ==> retrieve information ==> R
# POST ==> send information ==> C
# PATCH / PUT ==> update information ==> U
# DELETE ==> delete information ==> D


# LIST ALL MY POKEMONS ✅
get "/" do # this is the C
  @all_pokes = Pokemon.all #retrieve from db M
  # HTML + Ruby
  # Embedded Ruby
  erb :index # passing it to V 
end