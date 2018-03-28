class JobPage < ActiveRecord::Base
  has_many :job_searches, dependent: :destroy

  default_scope { order('created_at DESC') }
end
