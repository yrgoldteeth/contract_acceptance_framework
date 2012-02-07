class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contract_acceptance_framework_contracts do |t|
      t.string :key
      t.text :content
      t.integer :major_version
      t.integer :minor_version
      t.integer :maintenance_version
      t.timestamps
    end
    add_index :contract_acceptance_framework_contracts, [:major_version, :minor_version, :maintenance_version, :key], :name => 'contracts_version_index'
    add_index :contract_acceptance_framework_contracts, [:key]

    create_table :contract_acceptance_framework_contract_acceptances do |t|
      t.integer :contract_id
      t.timestamps
      t.integer :acceptable_id
      t.string  :acceptable_type
    end
  end

  def self.down
    drop_table :contract_acceptance_framework_contract_acceptances

    remove_index :contract_acceptance_framework_contracts, :column => [:key]
    remove_index :contract_acceptance_framework_contracts, 'contracts_version_index'
    drop_table :contract_acceptance_framework_contracts
  end
end
