json.extract! discussion, :id, :title, :first_post, :user_id, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
