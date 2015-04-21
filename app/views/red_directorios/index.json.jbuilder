json.array!(@red_directorios) do |red_directorio|
  json.extract! red_directorio, :id, :directorio_id, :red, :link
  json.url red_directorio_url(red_directorio, format: :json)
end
