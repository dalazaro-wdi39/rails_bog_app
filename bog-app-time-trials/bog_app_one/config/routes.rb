Rails.application.routes.draw do
  root "creatures#index"

  # index all creatures
  get "/creatures", to: "creatures#index", as: "creatures"

  # view form for new creature
  get "/creatures/new", to: "creatures#new", as: "new_creature"

  # create creature submit
  post "/creatures", to: "creatures#create"

  # show one creature by id
  get "creatures/:id", to: "creatures#show", as: "creature"

  # view form for edit creature
  get "creatures/:id/edit", to: "creatures#edit", as: "edit_creature"

  # update creature submit
  patch "/creatures/:id", to: "creatures#update"

  # destroy creature
  delete "/creatures/:id", to: "creatures#destroy"

end
