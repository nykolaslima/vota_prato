module ApplicationHelper
	def valor_formatado(valor)
		number_to_currency valor, unit: 'R$', separator: ',', delimiter: '.'
	end
end
