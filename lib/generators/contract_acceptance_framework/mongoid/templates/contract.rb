module ContractAcceptanceFramework
  class Contract
    include ContractExtensions
    include Mongoid::Document
    include Mongoid::Timestamps

    field :key, type: String
    field :major_version, type: Integer
    field :minor_version, type: Integer
    field :maintenance_version, type: Integer
    field :content
  end
end
