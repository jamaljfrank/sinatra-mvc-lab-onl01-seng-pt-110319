require_relative 'config/environment'
require_relative 'models/piglatinizer'


class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/' do
  @pig_text = PigLatinizer.new(params[:words])
 
  erb :results
  end
end
