class Qualificacao < ActiveRecord::Base
	attr_accessible :nota, :valor_gasto, :cliente_id, :restaurante_id
end
