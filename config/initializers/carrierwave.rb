CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider => 'AWS',       # required
    :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],       # required
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
    :region => ENV['S3_REGION']       # required
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME']                     # required
  # config.asset_host       = 'https://assets.example.com'            # optional, defaults to nil
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
