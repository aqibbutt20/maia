class User < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :clients, through: :assignments
end
