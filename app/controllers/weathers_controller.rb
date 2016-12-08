class WeathersController < ApplicationController


  def home
    # if params[:city]
    #   @city = params[:city]
    # else
    #   @city = "san francisco"
    # end

    # if params[:state]
    #   @state = params[:state]
    # else
    #   @state = "CA"
    # end



    # @data = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{@city}%2C%20#{@state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body

    # @forecasts = @data['query']['results']['channel']['item']['forecast']
    # @current_location = @data['query']['results']['channel']['location']
    # @today_forecast = @data['query']['results']['channel']['item']['forecast'].first

    @response = Weather.lookup(2487956, Weather::Units::FAHRENHEIT)

  end


  end
