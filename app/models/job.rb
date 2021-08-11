class Job < ApplicationRecord
  belongs_to :advert,optional: true
end
