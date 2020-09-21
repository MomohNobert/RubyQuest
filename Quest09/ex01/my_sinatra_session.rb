require 'sinatra'
require 'sinatra/cookies'

enable :sessions

get '/' do
    action, name, value = params['action'], params['name'], params['value']
    if action == "set" 
        session[:name] = value
    elsif action == "get"
        session[:name]
    elsif action == "del"
        session[:name] = nil
    else 
        "Welcome to HomePage, Do an action."
    end
end