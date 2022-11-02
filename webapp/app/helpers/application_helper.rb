module ApplicationHelper
    def weather(lat, lon)
        api_token = ENV['OPEN_WEATHER_MAP_API']
        base_url = "https://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&appid=#{api_token}"

        res = HTTParty.get(base_url)
        return res.body
    end
end
