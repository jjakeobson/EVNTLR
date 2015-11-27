CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV["S3_KEY"],       # required
    :aws_secret_access_key  => ENV["S3_SECRET"],       # required
    # :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV["S3_BUCKET_NAME"]                     # required
  # config.asset_host       = 'https://assets.example.com'            # optional, defaults to nil
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
