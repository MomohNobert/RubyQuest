require 'sinatra'
require 'sinatra/cookies'

get '/' do
    action, name, value = params['action'], params['name'], params['value']
    if action == "set" 
        cookies[:name] = value
    elsif action == "get"
        cookies[:name]
    elsif action == "del"
        cookies[:name] = nil
    else 
        "Welcome to HomePage, Do an action."
    end
end