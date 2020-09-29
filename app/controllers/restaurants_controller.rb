class RestaurantsController < ApplicationController
 
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
        @restaurants = Restaurant.all
        @search = params["search"]
        if @search.present?
            @postcode = @search["postcode"] # "G327QR"
            @results_array = []

            @results_array << @results = Geocoder.search(@postcode)
            @results_array << @results2 = Geocoder.search(@postcode.split(//).insert(2, ' ').join)
            @results_array << @results3 = Geocoder.search(@postcode.split(//).insert(3, ' ').join)
        
            @results_array.each do |result|
                if !result.empty? && result.first.country == "United Kingdom"
                    @coordinates = result.first.coordinates
                end
            end

            @restaurants = Restaurant.near(@coordinates, 5, units: :km).sort_by(&:id)
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

end
