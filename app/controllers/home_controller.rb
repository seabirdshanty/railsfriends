class HomeController < ApplicationController
  def index
    #Index page
  end

  def about
    #About Page
    @gimme_friend = User.all
    @gimme_user = User.all
    @about_me = "My name is Jamie..."
  end
end
