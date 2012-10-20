class ScreenshotPhotoUploader < PhotoBase

  version :thumb do
    resize_to_fill(100, 100)
  end
  
  version :large do
    resize_to_limit(800, 600)
  end

end