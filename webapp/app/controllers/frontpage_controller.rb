class FrontpageController < ApplicationController
    def index 
        @weather = helpers.weather("Tehran")
    end 
end
