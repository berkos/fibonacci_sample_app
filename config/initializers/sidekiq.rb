Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://test-redis.ijpwsg.0001.euw2.cache.amazonaws.com:6379/12' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://test-redis.ijpwsg.0001.euw2.cache.amazonaws.com:6379/12' }
end



