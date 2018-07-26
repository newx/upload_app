class AppFile < ApplicationRecord
  include FileUploader::Attachment.new(:file)
end
