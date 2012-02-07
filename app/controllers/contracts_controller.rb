module ContractAcceptanceFramework
  class ::ContractsController < ApplicationController

    def index
      @contracts = ContractAcceptanceFramework::Contract.to_adapter.find_all(:order => 'key')
    end
  end
end
