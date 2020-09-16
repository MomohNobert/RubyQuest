require 'sinatra'

frankSinatraSongs = [
    "My Way", 
    "Luck Be a Lady", 
    "Love's Been Good to Me", 
    "A Lovely Way to Spend an Evening", 
    "Love Is Here to Stay", 
    "Let's Get Away from It All", 
    "I've Got a Crush on You", 
    "It's the Same Old Dream", 
    "It's Only a Paper Moon", 
    "How Do You Do Without Me?", 
    "Hooray for Love",
    "Goodnight Irene",
    "Give Her Love",
    "Full Moon and Empty Arms",
    "Five Minutes More",
    "Everybody Loves Somebody",
    "Don't Ever Go Away (Por Causa de Você)",
    "Dig Down Deep",
    "A Cottage for Sale",
    "Come Back to Sorrento"
]

get '/' do
  frankSinatraSongs.sample
end