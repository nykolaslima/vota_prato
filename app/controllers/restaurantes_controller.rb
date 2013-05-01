class RestaurantesController < ApplicationController
	before_filter :set_restaurante_by_id,
								only:[:show, :edit, :update]

	def index
		@restaurantes = Restaurante.order :nome

		respond_to do |format|
			format.html
			format.xml {render xml: @restaurantes}
			format.json {render json: @restaurantes}
		end
	end

	def show
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
	end

	def update
		if @restaurante.update_attributes params[:restaurante]
			redirect_to action: :show, id: @restaurante
		else
			render action: :edit
		end
	end

private
	def set_restaurante_by_id
		@restaurante = Restaurante.find(params[:id])
	end
end
