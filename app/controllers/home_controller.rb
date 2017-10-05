class HomeController < ApplicationController
  def landing
    # create photo object ready to be populated with data by the user on the form in the landing.html.erb view
    @photo = Photo.new

    # fetch all the photos from the database so we can list them out in the landing.html.erb view
    @photos = Photo.all

    # grab the first current user and provide that user object to the view
    @user = current_user
  end
end
