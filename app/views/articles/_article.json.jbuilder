json.extract! article, :id, :title, :img, :content, :created_at, :updated_at
json.url article_url(article, format: :json)
