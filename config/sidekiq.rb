Sidekiq.configure_server do |config|
  config.redis = { url: 'redis-test.ijpwsg.ng.0001.euw2.cache.amazonaws.com:6379' }
end
