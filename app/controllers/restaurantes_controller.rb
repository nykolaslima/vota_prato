class RestaurantesController < ApplicationController
	def index
		@restaurantes = Restaurante.order :nome
	end

	def show
		@restaurante = restaurante_by_id
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
		if @restaurante.save
			redirect_to action: :show, id: @restaurante
		else
			render action: :new
		end
	end

	def edit
		@restaurante = restaurante_by_id
	end

	def update
		@restaurante = restaurante_by_id
		
		if @restaurante.update_attributes params[:restaurante]
			redirect_to action: :show, id: @restaurante
		else
			render action: :edit
		end
	end

private
	def restaurante_by_id
		Restaurante.find(params[:id])
	end
end
