json.extract! user, :id, :persona, :documento, :emision, :vencimiento, :nombre, :corre, :telefono_principal, :telefono_secundario, :created_at, :updated_at
json.url user_url(user, format: :json)
