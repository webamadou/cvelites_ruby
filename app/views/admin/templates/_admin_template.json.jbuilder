json.extract! admin_template, :id, :name, :description, :domain_id, :views, :status, :created_at, :updated_at
json.url admin_template_url(admin_template, format: :json)
