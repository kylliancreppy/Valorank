Rails.application.routes.draw do
  # For deagentse DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root   to: "agents#index"

  get    "agents",          to: "agents#index"
  
  
  get    "agents/new",      to: "agents#new",  as: :new_agent
  post   "agents",          to: "agents#create"


  # NB: Thagentsute needs to be *after* `new` route.
  get    "agents/:id",      to: "agents#show", as: :agent


  get    "agents/:id/edit", to: "agents#edit", as: :edit_agent
  patch  "agents/:id",      to: "agents#update"


  delete "agents/:id",      to: "agents#destroy"

  get "weapons", to: "weapons#index"
end
