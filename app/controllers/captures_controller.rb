class CapturesController < ApplicationController

	def create
	    @pokemon = Pokemon.find(params[:pokemon_id])
	    Capture.create(pokemon_id: @pokemon.id, user_id: current_user.id, leve: 1)
	    redirect_to root_path
	end

	def destroy
	    @cap = Capture.find_by(pokemon_id: params[:id], user_id: current_user.id)
	    @cap.destroy
	    redirect_to root_path
	end

	def level_up
	    cap = Capture.find(params[:id])
	    cap.leve += 1
	    cap.save
	    redirect_to root_path
	end

	def show
		@capture = Capture.find(params[:id])
	end
end
