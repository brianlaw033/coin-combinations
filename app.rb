require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/coin_combination')
  require('pry')

  get('/') do
    erb(:form)
  end

  get('/display') do
    @result = params.fetch('number').coin_combination()
    erb(:form)
  end
