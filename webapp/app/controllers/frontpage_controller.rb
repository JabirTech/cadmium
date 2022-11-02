class FrontpageController < ApplicationController
    def index 
        @weather = helpers.weather(35.7219, 51.3347)
    end 
end
