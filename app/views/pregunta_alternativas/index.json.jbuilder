json.array!(@pregunta_alternativas) do |pregunta_alternativa|
  json.extract! pregunta_alternativa, :id, :nombre, :pregunta, :respuesta1, :respuesta2, :respuesta3, :respuesta4, :verdadera, :explicacion
  json.url pregunta_alternativa_url(pregunta_alternativa, format: :json)
end
