ContractAcceptanceFramework::Engine.routes.draw do
  root :to => 'contracts#index'
  
  resources :contracts do
    resources :contract_acceptances
  end
end
