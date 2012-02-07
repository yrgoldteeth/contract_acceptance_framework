module ContractAcceptanceFramework
  class ContractAcceptance
    include DataMapper::Resource
    include ContractAcceptanceExtensions

    property :id, Serial
    property :acceptable_id, Integer
    property :acceptable_type, String
    property :contract_id, Integer
    timestamps :at
  end
end
