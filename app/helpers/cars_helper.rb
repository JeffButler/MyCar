module CarsHelper
  def get_photos(id)
    if (id.nil?)
      @photo = Photo.first
    else
      @photo = Photo.find(id)
    end
  end
end
