module ContractAcceptanceFramework
  class ContractAcceptance
    include Mongoid::Document
    include Mongoid::Timestamps
    include ContractAcceptanceExtensions
  end
end
