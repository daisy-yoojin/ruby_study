# #루비스터디

3일차 루비 스터디 자료입니다.

​	-gem 설정 / 설치

​	-가벼운 코딩

​	-깃 사용

@gem

```ruby
source 'https://rubygems.org'

#브라우저 실행
gem 'launchy'
#주식 정보
gem 'stock_quote'
#환율관련 정보
gem 'eu_central_bank'
#HTTP 파서
gem 'httparty'
#크롤링
gem 'nokogiri'
#날씨 정보 받아오기
gem 'forecast_io'
#위도경도 받아오기
gem 'geocoder'
```

@weather & geo

```ruby
require 'forecast_io'
require 'geocoder'

#일반적 사용 방식
ForecastIO.configure do |configuration|
  configuration.api_key = 'your number'
end

# 간단한 경우만
#ForecastIO.api_key = 'your number'

forecast  = ForecastIO.forecast(37.8267, -122.423)

puts forecast
```

