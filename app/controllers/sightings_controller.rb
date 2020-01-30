class SightingsController < ApplicationController
    def index
        @sightings = Sighting.all
        render json: @sightings
    end
    
    def show
        @sighting = Sighting.find_by(id: params[:id])
        render json: @sighting, include: [:bird, :location], except: [:created_at, :updated_at]
    end
end
