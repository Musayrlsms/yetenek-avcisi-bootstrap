class Employer < ApplicationRecord
  has_many :adverts
  has_many :companies
end