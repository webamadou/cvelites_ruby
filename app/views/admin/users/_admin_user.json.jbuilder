json.extract! admin_user, :id, :name, :firstname, :email, :title, :presentation, :birth_date, :birth_place, :country_id, :address, :views, :status, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
