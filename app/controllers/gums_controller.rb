class GumsController < ApplicationController
  def index
    @gums = Gum.all

    render("gum_templates/index.html.erb")
  end

  def show
    @gum = Gum.find(params.fetch("id_to_display"))

    render("gum_templates/show.html.erb")
  end

  def new_form
    @gum = Gum.new

    render("gum_templates/new_form.html.erb")
  end

  def create_row
    @gum = Gum.new

    @gum.brand = params.fetch("brand")

    if @gum.valid?
      @gum.save

      redirect_back(:fallback_location => "/gums", :notice => "Gum created successfully.")
    else
      render("gum_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @gum = Gum.find(params.fetch("prefill_with_id"))

    render("gum_templates/edit_form.html.erb")
  end

  def update_row
    @gum = Gum.find(params.fetch("id_to_modify"))

    @gum.brand = params.fetch("brand")

    if @gum.valid?
      @gum.save

      redirect_to("/gums/#{@gum.id}", :notice => "Gum updated successfully.")
    else
      render("gum_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @gum = Gum.find(params.fetch("id_to_remove"))

    @gum.destroy

    redirect_to("/gums", :notice => "Gum deleted successfully.")
  end
end
