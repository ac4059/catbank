require 'sinatra/base'
require './lib/photo'
require './lib/elect'

class KittenManager < Sinatra::base
   get '/' do
     url = Photo.new
     url.view_random_photo
     @source = url.url_link

     erb :'photo/index'
   end

   post '/elect' do
     vote = 'not'
     vote = 'cat' if params[:play] == 'Cat'
     url = Photo.new
     vote = Elect.new(vote, url.url_link)
     vote.cast
     redirect '/vote/cast'
   end

   get '/elect/cast' do
    url = Photo.new
    url.view_random_photo
    @source = url.url_link
    erb :'vote/cast'
   end

end
