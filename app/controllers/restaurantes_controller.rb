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
end
