module ContractAcceptanceFramework
  module ContractExtensions
    extend ActiveSupport::Concern

    included do
      has_many :contract_acceptances, :as => :acceptable, :class_name => 'ContractAcceptanceFramework::ContractAcceptance'
  
      validates :maintenance_version, :uniqueness => { :scope => [:minor_version, :major_version, :key] }
      validates :maintenance_version, :minor_version, :major_version, :key, :content, :presence => true
    end
    
    def version=(version_string) # Expects "1.0.2"
      versions = version_string.split(".")
      raise VersionError, "invalid version_string" unless versions.size == 3
      self.major_version, self.minor_version, self.maintenance_version = versions
    end
  end
end
