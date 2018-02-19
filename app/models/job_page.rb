class JobPage < ActiveRecord::Base
  has_many :job_searches, dependent: :destroy
end
