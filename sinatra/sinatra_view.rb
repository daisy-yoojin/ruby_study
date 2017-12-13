require 'sinatra'


get '/' do 
	"<H1>저엄심시가안</H1>"
	
end

get '/intro' do 
	send_file "intro.html"

end

get '/outro' do
	@name = "ujin"
	erb :outro  # 'outro'#embeded ruby
end

get '/lunch' do
	menus=["편의점","집","김밥","라면","20층"]
	@menu = menus.sample
	erb :lunch
end
get '/random' do
	

	erb :random
end