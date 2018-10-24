require 'sinatra'

get '/' do
    erb :index
end

post '/romano' do
    @romano = params[:numero]
end