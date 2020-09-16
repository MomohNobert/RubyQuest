require 'sinatra'

get '/' do
  "Everybody can see this page."
end

get '/protected' do 
  "401, Not Authorized."
end

get '/protected/:user/:password' do |u,p|
  print u
  print p
  if u == "admin" && p == "admin"
    "Welcome, Authenticated Client"
  else
    "401, Not Authorized"
  end
end