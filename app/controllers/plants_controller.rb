class PlantsController < ApplicationController
    def index
        plant = Plant.all
        render json: plant

    end

    def show
        plant = Plant.find(params[:id])
        render json:plant
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status:201
    end

    private
        def plant_params
            params.permit(:name, :image, :price)
        end



end
