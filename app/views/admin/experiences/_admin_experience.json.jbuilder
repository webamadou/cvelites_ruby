json.extract! admin_experience, :id, :title, :company_id, :user_id, :description, :started_at, :ended_at, :still_there, :status, :created_at, :updated_at
json.url admin_experience_url(admin_experience, format: :json)
