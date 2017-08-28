Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = 'Diabot'
  config.robot.mention_name = 'diabot'

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :debug

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ['1', '2']
  config.robot.admins = ['189436077793083392']

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :discord_oauth
  config.adapters.discord_oauth.token = ENV['TOKEN']
  config.adapters.discord_oauth.client = ENV['CLIENT']

  config.redis[:host] = ENV['DIABOT_REDIS_HOST']
  config.redis[:port] = ENV['DIABOT_REDIS_PORT']
  config.redis[:user] = ENV['DIABOT_REDIS_USER']
  config.redis[:password] = ENV['DIABOT_REDIS_PASS']

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = 'value'

  config.http.port = ENV['PORT']
end
