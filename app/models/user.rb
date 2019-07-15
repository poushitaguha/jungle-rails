class User < ActiveRecord::Base
    
    has_secure_password
    has_many :reviews

    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :password_confirmation, presence: true    
    validates :password, :confirmation => true
    validates :email, :uniqueness => { :case_sensitive => false }
    validates_length_of :password, :minimum => 6

    def self.authenticate_with_credentials(email, password)
        user_email_normalize = email.downcase.strip
        user = User.find_by(email: user_email_normalize)
        # puts user_email_normalize
        if user && user.authenticate(password)
          user
        else
          nil
        end
    end

end