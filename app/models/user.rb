class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         enum role: [:admin, :user, :guest, :cashier, :kitchen]
         after_initialize :set_default_role, :if => :new_record?
       
         def set_default_role
           self.role ||= :user
         end       

         has_one :profile, :dependent => :destroy
         
  # before_create :create_profile

  # # def create_profile
  # #   profile = build_profile(:firstname => “First Name”, :lastname => “Last Name”,) 
  # # end

end
