class Account < ApplicationRecord
  attr_accessor :password
   validates_confirmation_of :password
   validates :display_name, :presence => true
   validates :email, :presence => true, :uniqueness => true
   before_save :encrypt_password

   def encrypt_password
     self.password_salt = BCrypt::Engine.generate_salt
     self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
   end

   def self.authenticate(email, password)
     account = Account.find_by "email = ?", email
     if account && account.password_hash == BCrypt::Engine.hash_secret(password, account.password_salt)
       account
     else
       nil
     end
   end
end
