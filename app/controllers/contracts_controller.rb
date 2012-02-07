module ContractAcceptanceFramework
  class ContractsController < ::ApplicationController
    respond_to :json

    def index
      @contracts = Contract.to_adapter.find_all
      respond_with @contracts
    end
  end
end
