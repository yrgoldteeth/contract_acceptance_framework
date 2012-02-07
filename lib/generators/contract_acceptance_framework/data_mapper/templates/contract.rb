module ContractAcceptanceFramework
  class Contract
    include DataMapper::Resource
    include ContractExtensions

    property :id, Serial
    property :key, String
    property :major_version, Integer
    property :minor_version, Integer
    property :maintenance_version, Integer
    property :content, Text
    timestamps :at

  end
end
