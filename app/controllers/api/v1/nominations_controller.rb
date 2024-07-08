class Api::V1::NominationsController < ApplicationController
    def index
      @nominations = Nomination.all
      render json: @nominations
    end

    def show
      @nomination = Nomination.find(params[:id])
      render json: @nomination
    end

    def create
      @nomination = Nomination.new(nomination_params)
      if @nomination.save
        render json: @nomination, status: :created
      else
        render json: @nomination.errors, status: :unprocessable_entity
      end
    end

    def update
      @nomination = Nomination.find(params[:id])
      if @nomination.update(nomination_params)
        render json: @nomination
      else
        render json: @nomination.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @nomination = Nomination.find(params[:id])
      @nomination.destroy
      head :no_content
    end

    private

    def nomination_params
      params.require(:nomination).permit(:nomineeName, :field, :category, :userEmail)
    end
end
