Rails.application.routes.draw do
  # resources :users do
  #   resources :events
  # end

root "users#welcome"

get "user/signup" => "users#new", as: :signup

post "/users" => "users#create", as: :user_create


# *********************************************************


  get '/login' => 'sessions#new', as: :login

  post '/login' => 'sessions#create', as: :session_create

  delete '/logout' => 'sessions#destroy', as: :session_destroy

# ****************************************************

get "/users/:user_id/events" => "events#index", as: :list_events

get "/users/:user_id/events/new" => "events#new", as: :new_event

post "/users/:user_id/events" => "events#create", as: :create_event

get "/users/:user_id/events/:event_id/participents" => "events#list_participents", as: :list_participents

# resources :sessions


#  Prefix Verb   URI Pattern                               Controller#Action
#     user_events GET    /users/:user_id/events(.:format)          events#index
                # POST   /users/:user_id/events(.:format)          events#create
 # new_user_event GET    /users/:user_id/events/new(.:format)      events#new
# edit_user_event GET    /users/:user_id/events/:id/edit(.:format) events#edit
#      user_event GET    /users/:user_id/events/:id(.:format)      events#show
#                 PATCH  /users/:user_id/events/:id(.:format)      events#update
#                 PUT    /users/:user_id/events/:id(.:format)      events#update
#                 DELETE /users/:user_id/events/:id(.:format)      events#destroy
#           users GET    /users(.:format)                          users#index
#                 POST   /users(.:format)                          users#create
       # new_user GET    /users/new(.:format)                      users#new
#       edit_user GET    /users/:id/edit(.:format)                 users#edit
#            user GET    /users/:id(.:format)                      users#show
#                 PATCH  /users/:id(.:format)                      users#update
#                 PUT    /users/:id(.:format)                      users#update
#                 DELETE /users/:id(.:format)                      users#destroy


#  Prefix Verb   URI Pattern                  Controller#Action
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy

end




