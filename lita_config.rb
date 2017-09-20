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
  config.robot.admins = [
    '125616270254014464', # Adi
    '260489402441138176', # awaxa
    '98802238364876800',  # Brent
    '189436077793083392', # cascer1
    '140155698658017280', # dosman711
    '182150298901544961', # Faythe
    '182446110600593408', # Muffins
    '186557012040089610', # Nadine
    '226432660329725962', # Tom
  ]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :discord_oauth
  config.adapters.discord_oauth.token = ENV['TOKEN']
  config.adapters.discord_oauth.client = ENV['CLIENT']

  config.redis[:url] = ENV['REDISCLOUD_URL']

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = 'value'

  config.handlers.keepalive.url = "https://diabot-discord.herokuapp.com"

  config.http.port = ENV['PORT']
end
