module ContractAcceptanceFramework
  module ContractAcceptable
    extend ActiveSupport::Concern

    included do
      has_many :contract_acceptances, :as => :acceptable, :class_name => 'ContractAcceptanceFramework::ContractAcceptance'
    end

    def has_agreed_to?(contract)
      contract_acceptances.find(:all).map(&:contract).include?(contract)
    end

    def agree_to!(contract)
      raise DuplicateAgreementError if has_agreed_to?(contract)
      contract_acceptances.create(:contract => contract, :acceptable => self)
    end
  end
end
