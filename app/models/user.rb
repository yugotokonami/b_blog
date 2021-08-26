class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :name
    validates :password
    validates :password_confirmation
  end
  has_many :articles
end

# presence: {message: "name can't be blank"}
# presence: {message: "password can't be blank"}
# presence: {message: "password confirmation can't be blank"}