class Individual < ActiveRecord::Base
  belongs_to :ivillage
  belongs_to :status
  belongs_to :title
  belongs_to :region
  has_and_belongs_to_many :icats
  has_many :ireceipts

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Individual.create! row.to_hash
    end
  end

end
