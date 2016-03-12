json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :nome, :cognome, :annolaurea, :datanascita, :luogo, :indirizzo, :cap, :citta, :telefono, :cellulare, :email
  json.url modulo_url(modulo, format: :json)
end
