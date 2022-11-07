module ApplicationHelper
    def weather(lat, lon)
        api_token = ENV['OPEN_WEATHER_MAP_API']
        base_url = "https://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&units=metric&appid=#{api_token}"

        res = HTTParty.get(base_url)
        res = JSON.parse(res.body)
        
        @data = [res["main"]["temp"], res["main"]["feels_like"], res["main"]["temp_min"], res["main"]["temp_max"]]
        @icon = res["weather"][0]["icon"]
        return @weather_data = [@data, @icon]
    end

    def get_movie_data
        base_url = "http://localhost:5000/"
        res = HTTParty.get(base_url)
        res = JSON.parse(res.body)
        res = res["results"]

        return res
    end
end
