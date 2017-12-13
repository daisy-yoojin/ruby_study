require 'sinatra'
require 'nokogiri'
require 'open-uri'
#encoding: UTF-8
#MVC 중 controller
get '/' do
	erb :index
end

get '/movie' do
	#현재 상영작 영화중 하나를 골라서 추천!!!
	@url ="http://movie.naver.com/movie/running/current.nhn"
	@doc = Nokogiri::HTML(open(@url),nil,'UTF-8')) 
	
	# 빈 array 생성. 동일 문법 : @movie_title = []
	@movie_title = Array.new 
	
	#ul.lst-detail.tl 태그가 ul인 태그 중 class가 lst_detail_t1인 것을 호출
	#dt 태그 가진것들을 가져와
	#a태그를 가진것들을 가져와
	@doc.css("ul.lst_detail_t1 dt a").each do |title|
		@movie_title << title.text  # title을 @movie_title로 넣어 준다.

	end
	@movie = @movie_title.sample

	p @movie_title
	puts @movie_title

	erb :movie
end