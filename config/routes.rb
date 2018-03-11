Rails.application.routes.draw do
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Bathroom resource:
  # CREATE
  get "/bathrooms/new", :controller => "bathrooms", :action => "new"
  post "/create_bathroom", :controller => "bathrooms", :action => "create"

  # READ
  get "/bathrooms", :controller => "bathrooms", :action => "index"
  get "/bathrooms/:id", :controller => "bathrooms", :action => "show"

  # UPDATE
  get "/bathrooms/:id/edit", :controller => "bathrooms", :action => "edit"
  post "/update_bathroom/:id", :controller => "bathrooms", :action => "update"

  # DELETE
  get "/delete_bathroom/:id", :controller => "bathrooms", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
