class PainelController < ApplicationController
	before_action :authenticate_user!

  def admin
  	@users = User.all
  	@artigos = Panelist.all
  	@courses = Course.all
  	authorize @admin
  end
 
end
