require 'rails/generators/migration'

class ContractAcceptanceFramework::DataMapperGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  class << self
    def source_root
      @contract_acceptance_source_route ||= File.expand_path('../templates', __FILE__)
    end
  end
  
  def create_model_file
    template 'contract.rb', 'app/models/contract.rb'
    template 'contract_acceptance.rb', 'app/models/contract_acceptance.rb'
  end
end
