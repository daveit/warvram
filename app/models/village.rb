class Village < ActiveRecord::Base

  belongs_to :status
  belongs_to :region

  has_and_belongs_to_many :village_categories

  has_many :contacts
  has_many :vreceipts

  # paginates_per 15

  scope :financial, -> { where(status_id: 1) }
  scope :notfinancial, -> { where(status_id: 2) }
  scope :prospect, -> { where(status_id: 3)}
  scope :cancelled, -> { where(status_id: 4)}

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Village.create! row.to_hash
    end
  end
end
