class RegistresController < ApplicationController
	def painel
		@usuario = current_user
	end	

end
