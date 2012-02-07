ContractAcceptanceFramework::Engine.routes.draw do
  root :to => 'contracts#index'
  
  resources :contracts
end
