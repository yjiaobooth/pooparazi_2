class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
    @location_hash = Gmaps4rails.build_markers(@bathrooms.where.not(:address_latitude => nil)) do |bathroom, marker|
      marker.lat bathroom.address_latitude
      marker.lng bathroom.address_longitude
      marker.infowindow "<h5><a href='/bathrooms/#{bathroom.id}'>#{bathroom.created_at}</a></h5><small>#{bathroom.address_formatted_address}</small>"
    end

    render("bathrooms/index.html.erb")
  end

  def show
    @comment = Comment.new
    @bathroom = Bathroom.find(params[:id])

    render("bathrooms/show.html.erb")
  end

  def new
    @bathroom = Bathroom.new

    render("bathrooms/new.html.erb")
  end

  def create
    @bathroom = Bathroom.new

    @bathroom.address = params[:address]
    @bathroom.neiborhood_id = params[:neiborhood_id]
    @bathroom.notes = params[:notes]
    @bathroom.comment_id = params[:comment_id]
    @bathroom.public_or_not = params[:public_or_not]
    @bathroom.rating_easy_to_find = params[:rating_easy_to_find]

    save_status = @bathroom.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bathrooms/new", "/create_bathroom"
        redirect_to("/bathrooms")
      else
        redirect_back(:fallback_location => "/", :notice => "Bathroom created successfully.")
      end
    else
      render("bathrooms/new.html.erb")
    end
  end

  def edit
    @bathroom = Bathroom.find(params[:id])

    render("bathrooms/edit.html.erb")
  end

  def update
    @bathroom = Bathroom.find(params[:id])

    @bathroom.address = params[:address]
    @bathroom.neiborhood_id = params[:neiborhood_id]
    @bathroom.notes = params[:notes]
    @bathroom.comment_id = params[:comment_id]
    @bathroom.public_or_not = params[:public_or_not]
    @bathroom.rating_easy_to_find = params[:rating_easy_to_find]

    save_status = @bathroom.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bathrooms/#{@bathroom.id}/edit", "/update_bathroom"
        redirect_to("/bathrooms/#{@bathroom.id}", :notice => "Bathroom updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bathroom updated successfully.")
      end
    else
      render("bathrooms/edit.html.erb")
    end
  end

  def destroy
    @bathroom = Bathroom.find(params[:id])

    @bathroom.destroy

    if URI(request.referer).path == "/bathrooms/#{@bathroom.id}"
      redirect_to("/", :notice => "Bathroom deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bathroom deleted.")
    end
  end
end
