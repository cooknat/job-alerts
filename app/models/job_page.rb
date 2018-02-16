class JobPage < ActiveRecord::Base
    # not sure if this should be has many or belongs to or both
  has_and_belongs_to_many :users
end
