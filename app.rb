class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end	

	get '/goodbye' do
		@name = 'Joe'
		erb :goodbye
	end

	get '/date' do
		date = Date.today
		@year = date.year
		@mon = date.month
		@date = date.day
		@wday = date.wday
		@result = date.strftime('%A, %B %d, %Y')
		erb :date
	end

end
