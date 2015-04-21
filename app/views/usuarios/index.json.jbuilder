json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :rut, :nombre, :apellidos, :email, :usuario, :password
  json.url usuario_url(usuario, format: :json)
end
