class QualificacaoMailer < ActionMailer::Base
  default from: "from@example.com"

	def email_qualificacao(qualificacao)
		@qualificacao = qualificacao
		mail to: 'to@example.com', subject: "O restaurante #{qualificacao.restaurante.nome} foi qualificado"
	end
end
