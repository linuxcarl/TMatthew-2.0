class PhotoBase < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore.pluralize}/#{model.id}/#{mounted_as}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def default_url
    "/images/upload_fallbacks/#{model.class.to_s.underscore}_#{mounted_as}/" + [version_name, "default.png"].compact.join('_')
  end

end
