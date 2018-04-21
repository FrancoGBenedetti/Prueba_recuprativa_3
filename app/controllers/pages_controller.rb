class PagesController < ApplicationController
   before_action :authenticate_user!
   
	  def index
	    @pokemons = Pokemon.all
	    @user_caps = current_user.captures
	  end
end
