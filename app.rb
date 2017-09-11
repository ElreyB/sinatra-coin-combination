require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combination')
require('pry')

get ('/') do
  erb(:input)
end

get('/output') do

  @cents = params.fetch("cents")
  # binding.pry
  coins = CoinCombination.new(@cents.to_i)
  @string_to_display = coins.to_s
  erb(:output)
end
