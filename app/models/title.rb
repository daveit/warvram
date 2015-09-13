class Title < ActiveRecord::Base
  has_many :contacts
  has_many :individuals
end
