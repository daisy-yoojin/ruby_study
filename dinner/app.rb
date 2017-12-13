require 'sinatra'
get '/'  do	
	send_file "index.html"
end

get '/menu' do
	menus = ["스테이크","샌드위치","타코","칼국수"]
	menu_url = {
		"스테이크" => "https://i.ytimg.com/vi/SyU-I6wUKO8/maxresdefault.jpg",
		"샌드위치" => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1y9zmYLsndRSy17NjtulfpMari7lZHDToOEhUMvVpgh0aZYh2Gw",
		"타코" => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3frKTG7RDx8wYmtwJchKPB97dLjH1ru2EHMwE7ZslXOXvUoEM2Q",
		"칼국수" => "https://i.ytimg.com/vi/bbYJ3faHgCA/maxresdefault.jpg"

#		"한글 x"
#		:kalgugsu => "https://i.ytimg.com/vi/bbYJ3faHgCA/maxresdefault.jpg"
#		kalgugsu: => "https://i.ytimg.com/vi/bbYJ3faHgCA/maxresdefault.jpg"

	}
	# urls = ["https://i.ytimg.com/vi/SyU-I6wUKO8/maxresdefault.jpg",
	# 	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1y9zmYLsndRSy17NjtulfpMari7lZHDToOEhUMvVpgh0aZYh2Gw",
	# 	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3frKTG7RDx8wYmtwJchKPB97dLjH1ru2EHMwE7ZslXOXvUoEM2Q",
	# 	"https://i.ytimg.com/vi/bbYJ3faHgCA/maxresdefault.jpg"]
	# ctrl + / => 전체 주석
	@menu = menus.sample
	@url = menu_url[@menu]
	# if @menu == "스테이크"
	# 	@url = urls[0]
	# elsif @menu == "샌드위치"
	# 	@url = urls[1]
	# elsif @menu == "타코"
	# 	@url = urls[2]
	# else
	# 	@url = urls[3]
	
	# end

	 
	erb :menu

end