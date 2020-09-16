require 'sinatra'

get '/' do
  "Everybody can see this page."
end

get '/protected' do 
  "401, Not Authorized."
end

get '/protected/:user/:password' do |u,p|
  "Hello"
end