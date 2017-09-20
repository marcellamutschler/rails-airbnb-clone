module ApplicationHelper
  def convo_partner(conversation)
    if conversation.owner == current_user
      return conversation.booker
    else
      return conversation.owner
    end
  end

  def get_profile_photo(user)
    avatar_url = "https://material-components-web.appspot.com/images/animal1.svg"
    unless user.profile.nil?
      if user.profile.photo?
        avatar_url = cl_image_path user.profile.photo.path
      elsif user.facebook_picture_url.present?
        avatar_url = image_path user.facebook_picture_url
      end
    end
    return avatar_url
  end
end
