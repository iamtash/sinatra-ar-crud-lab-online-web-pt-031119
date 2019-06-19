
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.create(name: params[:name]), content: params[:content])

    @articles = Article.all
    erb :index
  end

  get '/articles' do
    erb :index
  end
end
