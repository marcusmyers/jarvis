Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "jarvis"
  config.robot.mention_name = "jarvis"

  # The locale code for the language to use.
  config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack

  config.http.host = ENV['SERVERHOST']
  config.http.port = 8181

  config.adapter.incoming_token = ENV['SLACK_INC_TOKEN']
  config.adapter.team_domain = ENV['SLACK_TEAM_DOMAIN']
  config.adapter.incoming_url = ENV['SLACK_INC_URL']
  config.adapter.username = "jarvis"

  config.handlers.slack_handler.webhook_token = ENV['SLACK_INC_TOKEN']
  config.handlers.slack_handler.team_domain = ENV['SLACK_TEAM_DOMAIN']

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  config.redis.host = ENV['REDIS_HOST']
  config.redis.port = ENV['REDIS_PORT']

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end

