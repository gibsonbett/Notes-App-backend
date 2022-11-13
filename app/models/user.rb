class User < ActiveRecord::Base
    has_secure_password
    validates :username, :presence => true, :uniqueness => true
    validates :password, :presence => true
    has_many :categories
    has_many :notes, through: :categories
end

