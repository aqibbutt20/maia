class Client < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments
end
