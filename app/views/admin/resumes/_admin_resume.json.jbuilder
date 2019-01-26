json.extract! admin_resume, :id, :name, :user_id, :description, :status, :created_at, :updated_at
json.url admin_resume_url(admin_resume, format: :json)
