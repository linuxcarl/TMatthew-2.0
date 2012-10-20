class ProjectPosterUploader < PhotoBase

  version :thumb do
    resize_to_fill(100, 100)
  end

  version :framed do
    resize_to_fit(400, 360)
  end

end