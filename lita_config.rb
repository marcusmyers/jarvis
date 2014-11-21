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

  config.http.host = "xserve.nacswildcats.org"
  config.http.port = 8181

  config.adapter.incoming_token = "WIvCFU9wakkaohmQOZsbelAC"
  config.adapter.team_domain = "nacstechdept"
  config.adapter.incoming_url = "https://hooks.slack.com/services/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"
  config.adapter.username = "jarvis"

  config.handlers.slack_handler.webhook_token = "WIvCFU9wakkaohmQOZsbelAC"
  config.handlers.slack_handler.team_domain = "nacstechdept"

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  config.redis.host = "127.0.0.1"
  config.redis.port = 10356

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end

