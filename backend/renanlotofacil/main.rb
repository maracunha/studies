require 'json'
#require 'awesome_print'  #Não pode ir para produção...
require 'httparty'
require_relative 'slack_notifier.rb'
require_relative 'loteria_result.rb'

def notifier(payload)
  # Initialize
  notifier = SlackNotifier.new "https://hooks.slack.com/services/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"

  # send a message, returns a boolean
  notifier.send(payload)
end

def recebe_resultdos
	lotofacil = LoteriaResult.new

	nu_concurso_inicio = 1815
	nu_concurso_fim = nu_concurso_inicio + 11
	meus_numeros = [1, 2, 3, 4, 7, 9, 10, 11, 13, 15, 17, 21, 22, 24, 25]
	
	valor_acumulado = 0
	concursos = nu_concurso_fim - nu_concurso_inicio

	concurso = nu_concurso_inicio
	for i in 0..concursos
		lotofacil.result(concurso, "http://loterias.caixa.gov.br/wps/portal/loterias/landing/lotofacil/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOLNDH0MPAzcDbz8vTxNDRy9_Y2NQ13CDA0sTIEKIoEKnN0dPUzMfQwMDEwsjAw8XZw8XMwtfQ0MPM2I02-AAzgaENIfrh-FqsQ9wBmoxN_FydLAGAgNTKEK8DkRrACPGwpyQyMMMj0VAcySpRM!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/pw/Z7_61L0H0G0J0VSC0AC4GLFAD2003/res/id=buscaResultado/c=cacheLevelPage/=/")
		acerto = meus_numeros & lotofacil.resultadoOrdenado
		
		case acerto.length
    when 15
      premio = lotofacil.premio_15
    when 14
      premio = lotofacil.premio_14
    when 13
      premio = 20
    when 12
      premio = 8
    when 11
      premio = 4
    else
      premio = 0
		end

		valor_acumulado += premio
		concurso += 1
	end

	lotofacil.result("", "http://loterias.caixa.gov.br/wps/portal/loterias/landing/lotofacil/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOLNDH0MPAzcDbz8vTxNDRy9_Y2NQ13CDA0sTIEKIoEKnN0dPUzMfQwMDEwsjAw8XZw8XMwtfQ0MPM2I02-AAzgaENIfrh-FqsQ9wBmoxN_FydLAGAgNTKEK8DkRrACPGwpyQyMMMj0VAcySpRM!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/pw/Z7_61L0H0G0J0VSC0AC4GLFAD2003/res/id=buscaResultado/c=cacheLevelPage/=/")
	
	acerto = meus_numeros & lotofacil.resultadoOrdenado
  numeros_acertados = []
  for i in 0...acerto.length
      numeros_acertados << acerto[i]   
	end

	payload = {
		"blocks": [
			{
				"type": "section",
				"text": {
					"type": "mrkdwn",
					"text": "*Se liga aí, novo sorteio!!!* \nConcurso: #{lotofacil.nuConcurso} | Data: #{lotofacil.dt_apuracaoStr}"
				}		
			},
			{
				"type": "divider"
			},
			{
				"type": "section",
				"text": {
					"type": "mrkdwn",
					"text": "*Números Sorteados:* \n#{lotofacil.resultadoOrdenado} \n*Acertei: #{acerto.length} números* \n#{numeros_acertados}"
				}
			},
			{
				"type": "divider"
			},
			{
				"type": "section",
				"text": {
					"type": "mrkdwn",
					"text": "#{lotofacil.ganhadores} ganhadores com 15 números \nValor acumulado dos jogos: R$ #{valor_acumulado} \nPara o concurso de *#{nu_concurso_inicio}* até *#{nu_concurso_fim}*"
				}
			}
		]
		}.to_json	

	notifier payload
		
end

recebe_resultdos

#fazer um banco de dados aqui: 
#from 1777 to 1788 3004 4000

# #pegar esse valor e salvar em banco de dados
# #ter uma tabela para fazer a somas
# # id concurso acertos valor
# 	1		1790			10			0
# 	1		1790			11			4
# 	1		1794			10			0
# 	1		1795			13			20
