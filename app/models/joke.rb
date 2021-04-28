class Joke < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :setup, presence: true
    validates :punchline, presence: true
end
