# Contract Acceptance Framework

This gem allows Rails models to signify agreement with versioned contracts.  
Requires Rails 3 or higher.

## Installation

In your Gemfile:

    gem 'contract_acceptance_framework'

If you're using Active Record:

    rails generate contract_acceptance_framework:active_record

If you're using Mongoid:
    
    rails generate contract_acceptance_framework:mongoid

If you're using DataMapper:
    
    rails generate contract_acceptance_framework:data_mapper

Don't forget to run migrations if you're using Active Record.

## Usage

Add to your models:

    include ContractAcceptanceFramework::ContractAcceptable
