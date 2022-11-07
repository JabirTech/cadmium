class FrontpageController < ApplicationController
    def index 
        @weather = helpers.weather(35.7219, 51.3347)
        @data = helpers.get_movie_data
    end 
end
