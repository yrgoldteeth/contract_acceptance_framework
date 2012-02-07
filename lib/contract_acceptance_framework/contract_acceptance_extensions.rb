module ContractAcceptanceFramework
  module ContractAcceptanceExtensions
    extend ActiveSupport::Concern

    included do
      belongs_to :acceptable, :polymorphic => true
      belongs_to :contract
      
      validates :acceptable_id, :acceptable_type, :contract_id, :presence => true
    end
  end
end
