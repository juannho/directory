json.array!(@directorios) do |directorio|
  json.extract! directorio, :id, :usuario_rut, :nombre, :descripcion, :telefono, :celular, :direccion, :comuna, :ciudad
  json.url directorio_url(directorio, format: :json)
end
