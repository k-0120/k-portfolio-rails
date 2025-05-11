Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # ← 最初はワイルドカードでOK。運用時は 'http://localhost:3001' にする

    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :put, :delete, :options]
  end
end
