json.extract! admin_achievement, :id, :user_id, :title, :description, :status, :created_at, :updated_at
json.url admin_achievement_url(admin_achievement, format: :json)
