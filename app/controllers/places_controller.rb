class PlacesController < ActionController::Base

  def index
    @places = Place.all
  end

  def new
  end

  def create
    # start with a new Place
    @place = Place.new

    @place["name"] = params["name"]

    @place.save

    redirect_to "/places"
  end

  def show
    # find a Company
    @place = Place.find_by({ "id" => params["id"] })
    # find Contacts for the Company
    @entries = Entry.where({ "place_id" => @place["id"] })
    # render companies/show view with details about Company
  end

end
