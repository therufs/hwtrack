module UsersHelper

  def outstanding_assignments
    assignments = Assignment.all
    own = []
    assignments.each do |a|
      if a.user_id == @user.id && !a.complete && a.assigned_date <= Date.today
        own.push a
      end
    end
    own
    ## can I define this method on user?
  end

  def completed_assignments ## dry this up
    assignments = Assignment.all
    own = []
    assignments.each do |a|
      if a.user_id == @user.id && a.complete
        own.push a
      end
    end
    own
  end

end
