# app/controllers/weather_controller.rb
require 'rest-client'
require 'json'

class WeatherController < ApplicationController
	before_action :set_api_key
	before_action :fetch_countries, only: [:index]
	before_action :set_location, only: [:index]

	def index
		if @location.present?
			response = RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=#{@location}&appid=#{@api_key}")
			weather_data = JSON.parse(response.body)

			temperature_kelvin = weather_data['main']['temp']
			@temperature = (temperature_kelvin - 273.15).round(2)
			@description = weather_data['weather'][0]['description']
		end
	rescue RestClient::ExceptionWithResponse => e
		flash[:alert] = "Error fetching weather data: #{e.response.body}"
		@temperature = nil
		@description = nil
	end



	private

	def set_api_key
		@api_key = ENV['OPENWEATHERMAP_API_KEY']
	end

	def fetch_countries
		countries_response = RestClient.get('https://restcountries.com/v3.1/all?fields=name')
		@countries = JSON.parse(countries_response.body).map { |country| country['name']['common'] }
	end

	def set_location
		@location = "#{params[:city]},#{params[:country]}"
	end
end
