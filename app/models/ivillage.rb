class Ivillage < ActiveRecord::Base

  has_many :individuals

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Ivillage.create! row.to_hash
    end
  end
end
