class Advert < ApplicationRecord
  belongs_to :user,optional:true
end
