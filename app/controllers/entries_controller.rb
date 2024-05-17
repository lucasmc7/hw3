class EntriesController < ApplicationController

  def new
  end

  def create
  @entry = Entry.new

  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["posted_on"] = params["posted_on"]
  @entry["place_id"] = params["place_id"]


  # save Contact row
  @entry.save

   # redirect user
   redirect_to "/places/#{@entry["place_id"]}"

  end


end
