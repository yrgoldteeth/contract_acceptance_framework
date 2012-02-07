module ContractAcceptanceFramework
  class ::ContractsController < ApplicationController
    respond_to :json

    def index
      @contracts = ContractAcceptanceFramework::Contract.to_adapter.find_all(:order => 'key')
      respond_with @contracts
    end
  end
end
