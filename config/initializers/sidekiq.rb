require 'sidekiq-scheduler'

Sidekiq.configure_server do |config|
  config.redis = Container[:redis]
end

Sidekiq.configure_client do |config|
  config.redis = Container[:redis]
end
