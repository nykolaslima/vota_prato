class Receita < ActiveRecord::Base
	attr_accessible :prato_id, :conteudo

	belongs_to :prato

	validates_presence_of :conteudo, message: " - deve ser preenchido"
end
