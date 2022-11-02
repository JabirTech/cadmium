module ApplicationHelper
    def weather(city)
        api_token = ENV['OPEN_WEATHER_MAP_API']
        base_url = "https://api.openweathermap.org/data/2.5/weather?city=#{city}&appid=#{api_token}"
    end
end
