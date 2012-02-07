require 'orm_adapter'
require 'contract_acceptance_framework/errors'
require 'contract_acceptance_framework/contract_acceptable'
require 'contract_acceptance_framework/contract_extensions'
require 'contract_acceptance_framework/contract_acceptance_extensions'

module ContractAcceptanceFramework
  class Engine < Rails::Engine
    isolate_namespace ContractAcceptanceFramework
  end
end

