module ContractAcceptanceFramework
  class Contract < ActiveRecord::Base
    include ContractExtensions
  end
end
