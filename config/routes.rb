Rails.application.routes.draw do
  # Routes for the Follow_request resource:
  # CREATE
  get "/follow_requests/new", :controller => "follow_requests", :action => "new"
  post "/create_follow_request", :controller => "follow_requests", :action => "create"

  # READ
  get "/follow_requests", :controller => "follow_requests", :action => "index"
  get "/follow_requests/:id", :controller => "follow_requests", :action => "show"

  # UPDATE
  get "/follow_requests/:id/edit", :controller => "follow_requests", :action => "edit"
  post "/update_follow_request/:id", :controller => "follow_requests", :action => "update"

  # DELETE
  get "/delete_follow_request/:id", :controller => "follow_requests", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
