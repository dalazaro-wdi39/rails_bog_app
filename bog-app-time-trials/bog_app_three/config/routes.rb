Rails.application.routes.draw do

# creatures     GET    /creatures(.:format)          creatures#index
#               POST   /creatures(.:format)          creatures#create
# new_creature  GET    /creatures/new(.:format)      creatures#new
# edit_creature GET    /creatures/:id/edit(.:format) creatures#edit
# creature      GET    /creatures/:id(.:format)      creatures#show
#               PATCH  /creatures/:id(.:format)      creatures#update
#               PUT    /creatures/:id(.:format)      creatures#update
#               DELETE /creatures/:id(.:format)      creatures#destroy

root "creatures#index"

get "/creatures", to: "creatures#index", as: "creatures"

get "/creatures/new", to: "creatures#new", as: "new_creature"

post "/creatures", to: "creatures#create"

get "/creatures/:id", to: "creatures#show", as: "creature"

get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"

patch "/creatures/:id", to: "creatures#update"

delete "/creatures/:id", to: "creatures#destroy"

end
