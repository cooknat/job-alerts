class JobSearch < ActiveRecord::Base
  belongs_to :user
  belongs_to :jobPage
end
