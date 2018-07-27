require "tus/server"
require "tus/storage/s3"

Tus::Server.opts[:storage] = Tus::Storage::S3.new(
  bucket:            ENV["AWS_BUCKET"],
  access_key_id:     ENV["AWS_ACCESS_KEY_ID"],
  secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
  region:            ENV["AWS_REGION"],
)

Tus::Server.opts[:redirect_download] = true # makes download requests redirect to AWS S3
