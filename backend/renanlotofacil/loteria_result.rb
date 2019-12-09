class LoteriaResult
  attr_accessor :resultadoOrdenado, :dt_apuracaoStr, :premio_14, :premio_15, :ganhadores, :nuConcurso

  def result(nu_concurso, uri)
    concurso = nu_concurso

    response = HTTParty.get("#{uri}?concurso=#{concurso}")
    resultado = JSON.parse(response.body)

    resultadoOrdenado = (resultado['resultadoOrdenado']).to_s.split('-')
    resultadoOrdenado = resultadoOrdenado.map(&:to_i)

    ganhadores = resultado['qt_ganhador_faixa1']
    nuConcurso = resultado['nu_concurso']
    dt_apuracaoStr = resultado['dt_apuracaoStr']
    
    premio_15 = resultado['vr_rateio_faixa1']
    premio_14 = resultado['vr_rateio_faixa2']

    result = {}
    @resultadoOrdenado = resultadoOrdenado
    @ganhadores = ganhadores
    @dt_apuracaoStr = dt_apuracaoStr
    @premio_14 = premio_14
    @premio_15 = premio_15
    @nuConcurso = nuConcurso

    #dt_apuracao = resultado['dt_apuracao']
    #dtProximoConcurso = resultado['dtProximoConcurso']
  end

end
