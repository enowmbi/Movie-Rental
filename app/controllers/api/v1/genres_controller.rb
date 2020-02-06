module Api
  module V1
    class GenresController < ApplicationController
      before_action :set_genre, only: [:show, :update, :destroy]

      # GET /genres
      def index
        @genres = Genre.all
        render json: @genres,expires_in: 10.minutes
      end

      # GET /genres/1
      def show
        if stale?(@genre)
          render json: @genre, include: ['books']
        end
      end

      # POST /genres
      def create
        @genre = Genre.new(genre_params)

        if @genre.save
          render json: @genre, status: :created, location: @genre
        else
          render json: @genre.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /genres/1
      def update
        if @genre.update(genre_params)
          render json: @genre
        else
          render json: @genre.errors, status: :unprocessable_entity
        end
      end

      # DELETE /genres/1
      def destroy
        @genre.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_genre
        @genre = Genre.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def genre_params
        params.require(:genre).permit(:name, :description)
      end
    end
  end
end
