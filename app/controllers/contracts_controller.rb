module ContractAcceptanceFramework
  class ContractsController < ::ApplicationController
    respond_to :json

    def index
      @contracts = Contract.to_adapter.find_all
    end
  end
end
