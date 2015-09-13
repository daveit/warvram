class Contact < ActiveRecord::Base
  belongs_to :position
  belongs_to :village
  belongs_to :title
end
