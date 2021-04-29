class User < ActiveRecord::Base
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<name>[^@\s]+)@(?<domainname>([-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :password, length: {in: 5..100}, confirmation: true
    has_many :jokes
end
