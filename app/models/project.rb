class Project < ActiveRecord::Base
  
  def pledging_expired?
    pledging_ends_on < Date.today
  end
  
  def self.accepting_pledges
    where("pledging_ends_on >= ?", Date.today ).order("pledging_ends_on asc")
  end
  
  
end
