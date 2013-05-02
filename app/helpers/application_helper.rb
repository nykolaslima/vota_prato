module ApplicationHelper
	def valor_formatado(valor)
		number_to_currency valor, unit: 'R$', separator: ',', delimiter: '.'
	end

	def novo_comentario(comentavel)
		render partial: 'comentarios/novo_comentario', locals: {comentavel: comentavel}
	end

	def comentarios(comentavel)
		render partial: 'comentarios/comentarios', locals: {comentarios: comentavel.comentarios}
	end
end
