require 'rails/generators/migration'

class ContractAcceptanceFramework::ActiveRecordGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  class << self
    def source_root
      @contract_acceptance_source_route ||= File.expand_path('../templates', __FILE__)
    end
    
    def next_migration_number path
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end
  end
  
  def create_model_file
    template 'contract.rb', 'app/models/contract.rb'
    template 'contract_acceptance.rb', 'app/models/contract_acceptance.rb'
    migration_template 'create_contracts.rb', 'db/migrate/create_contracts.rb'
  end
end
