class PlacesController < ActionController::Base

  def index
    @places = Place.all
  end

  def new
  end

  def create
    # start with a new Company
    @place = Place.new

    # assign user-entered form data to Company's columns
    @place["name"] = params["name"]

    # save Company row
    @company.save

    # redirect user
    redirect_to "/companies"
  end

end
