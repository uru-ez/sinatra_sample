require 'bundler'

Bundler.require

require 'sinatra/base'
require 'haml'

class Application < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/haml' do
    haml :sample
  end

  get '/response' do
    status 404
    headers 'Content-Type' => 'text/plain'
    body 'response sample2'
  end

  get '/dynamic/:name' do
    "Hi #{params[:name]}"
  end
end
