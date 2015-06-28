# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumb do
    resize_to_fit(300, 200)
  end

  version :medium do
    resize_to_fit(600, 400)
  end
end
