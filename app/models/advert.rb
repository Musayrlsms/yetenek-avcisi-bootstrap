class Advert < ApplicationRecord
  belongs_to :user,optional:true
  has_many :jobs
end
