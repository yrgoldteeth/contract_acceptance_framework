module ContractAcceptanceFramework
  class ContractAcceptanceFrameworkError < StandardError; end 
  class DuplicateAgreementError < ContractAcceptanceFrameworkError; end
  class VersionError < ContractAcceptanceFrameworkError; end
end

