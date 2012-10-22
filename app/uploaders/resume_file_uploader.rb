class ResumeFileUploader < CarrierWave::Uploader::Base

  def store_dir
    "uploads/#{model.class.to_s.underscore.pluralize}/#{model.id}/#{mounted_as}"
  end

end
