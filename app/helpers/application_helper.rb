module ApplicationHelper

  def better_message(message)
    if message.include?("without any students")
      message << " " << (link_to "Create one?", new_user_path)
    else
      message
    end
  end

end
