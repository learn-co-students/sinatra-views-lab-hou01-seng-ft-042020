class App < Sinatra::Base

	@now = ""

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
  end
  
  get '/goodbye' do
    erb :goodbye
  end

  get '/date' do
	@now = DateTime.now
    erb :date
  end
end
