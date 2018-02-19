class JobSearch < ActiveRecord::Base
  belongs_to :user
  belongs_to :job_page  
end
