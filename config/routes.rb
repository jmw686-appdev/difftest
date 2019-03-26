Rails.application.routes.draw do
  # Routes for the Gum resource:

  # CREATE
  get("/gums/new", { :controller => "gums", :action => "new_form" })
  post("/create_gum", { :controller => "gums", :action => "create_row" })

  # READ
  get("/gums", { :controller => "gums", :action => "index" })
  get("/gums/:id_to_display", { :controller => "gums", :action => "show" })

  # UPDATE
  get("/gums/:prefill_with_id/edit", { :controller => "gums", :action => "edit_form" })
  post("/update_gum/:id_to_modify", { :controller => "gums", :action => "update_row" })

  # DELETE
  get("/delete_gum/:id_to_remove", { :controller => "gums", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
