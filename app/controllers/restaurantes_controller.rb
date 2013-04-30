class RestaurantesController < ApplicationController
	def index
		@restaurantes = Restaurante.order :nome
	end

	def show
		@restaurante = Restaurante.find(params[:id])
	end

	def destroy
		Restaurante.destroy(params[:id])

		redirect_to action: :index
	end

	def new
		@restaurante = Restaurante.new
	end

	def create
		@restaurante = Restaurante.new params[:restaurante]
		@restaurante.save

		redirect_to action: :show, id: @restaurante
	end
end
