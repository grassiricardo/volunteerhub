json.extract! project, :id, :name, :description, :institution, :url, :status, :voluntary_id, :created_at, :updated_at
json.url project_url(project, format: :json)
