module LikesHelper
  def like_or_unlike_button(event, like)
    if like
      button_to "☆ Unlike", event_like_path(event, like), 
            method: :delete, class: "list-group-item list-group-item-action"
    else
      button_to "★ Like", event_likes_path(event), class: "list-group-item list-group-item-action"
    end  
  end
end
