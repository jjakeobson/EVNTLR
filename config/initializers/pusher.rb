require 'pusher'

# Pusher.app_id = ENV['PUSHER_APP_ID']
# Pusher.key    = ENV['PUSHER_KEY']
# Pusher.secret = ENV['PUSHER_SECRET']

#KEYS FOR LOCAL HOST
# Pusher.app_id = '152687'
# Pusher.key = '9a29dc21625531215e18'
# Pusher.secret = 'b07b3be6f2f24a87c5de'

#KEYS FOR DEVELOPMENT (HEROKU)
Pusher.app_id = '156779'
    Pusher.key = '3369c2bfacb59b4465df'
    Pusher.secret = '9656e10dcafb7711405a'

Pusher.logger = Rails.logger
