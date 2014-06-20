module UsersHelper

  def own_assignments
    assignments = Assignment.all
    own = []
    assignments.each do |a|
      if a.user_id = @user.id
        own.push a
      end
    end
    own
    ## can I define this method on user?
  end

end
