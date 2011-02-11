class Contract < ActiveRecord::Base
  has_many :contract_acceptances

  validates :maintenance_version, :uniqueness => { :scope => [:minor_version, :major_version, :key] }
  validates :maintenance_version, :minor_version, :major_version, :key, :content, :presence => true

  scope :accepted_by, lambda{|acceptable| joins(:contract_acceptances).where({ :contract_acceptances => { :acceptable_id => acceptable.id, :acceptable_type => acceptable.type } }) }
  scope :for_key, lambda{|key| where("`key` = ?", key) }
  scope :by_version, order("major_version DESC, minor_version DESC, maintenance_version DESC")

  # Find the latest contract for a given key, by version number
  def self.latest(key)
    for_key(key).by_version.find(:first)
  end

  # Find the latest accepted contract for a given acceptable, by key
  def self.latest_accepted(key, acceptable)
    accepted_by(acceptable).for_key(key).by_version.find(:first)
  end

  def version=(version_string) # Expects "1.0.2"
    versions = version_string.split(".")
    raise "invalid version_string" unless versions.size == 3
    self.major_version, self.minor_version, self.maintenance_version = versions
  end
end
