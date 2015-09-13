class Region < ActiveRecord::Base
  has_many :villages
  has_many :individuals
end
