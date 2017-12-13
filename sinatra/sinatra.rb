require 'sinatra'

#minimum sinatra aoo

get '/' do 
	"LikeLion"
	
end

get '/yoojin' do
	"유진아 안녕"
end

get '/welcome/:name' do
	name = params['name']# parameter
	"#{name}님 반갑"   
	#"#{params['name']}님 반갑습니다."
end

get '/cube/:num' do
	number = params['num'].to_i

	result = number**3  # 3제곱

	"#{number}의 세제곱은 #{result}이다. 알겠냐?"

	#params[:num]
	#params['num']
end

get '/sayhi/:name' do
	"#{params['name']} 안녕? 반가워!"
	"#{params['name']} 안녕! 잘가!"

end