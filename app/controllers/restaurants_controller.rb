class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def index
        @restaurants = Restaurant.all
        @search = params["search"]
        if @search.present?
            @postcode = @search["postcode"] # doesnt work if no space in PC
            @results = Geocoder.search(@postcode)
            @coordinates = @results.first.coordinates
            @restaurants = Restaurant.near(@coordinates, 5, units: :km)
        end
    end

    def show
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.save
        redirect_to restaurant_path(@restaurant)
    end

    def edit
    end

    def update
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path
    end

      private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :open_time, :close_time, :about, :phone, :email)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
