# encoding: utf-8
class AttachmentUploader < CarrierWave::Uploader::Base
  #include CarrierWave::MiniMagick
  
  def extension_white_list
    %w(pdf doc png jpg jpeg)
  end

  def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
