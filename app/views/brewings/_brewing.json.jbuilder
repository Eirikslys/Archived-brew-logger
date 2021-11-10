json.extract! brewing, :id, :name, :brewers, :batch_number, :strength, :original_gravity, :final_gravity, :notes, :date, :created_at, :updated_at
json.url brewing_url(brewing, format: :json)
