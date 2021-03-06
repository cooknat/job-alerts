class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
   
  has_many :job_searches, dependent: :destroy  

  before_save { self.role ||= :user }  

  enum role: [:user, :admin]

end
