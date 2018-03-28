class JobSearch < ActiveRecord::Base
  belongs_to :user
  belongs_to :job_page  

  default_scope { order('created_at DESC') }
end
