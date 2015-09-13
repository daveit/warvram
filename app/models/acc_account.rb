class AccAccount < ActiveRecord::Base
  belongs_to :acc_type
  has_many :acc_trans
end
