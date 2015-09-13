class AccBankAccount < ActiveRecord::Base
  has_many :acc_trans
end
