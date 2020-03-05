module ApplicationHelper

  def default_photo_tag(user, attrs)
    if user.photo.attached?
      cl_image_tag user.photo.key, attrs
    else
      image_tag "frog.jpg", attrs
    end
  end

end
