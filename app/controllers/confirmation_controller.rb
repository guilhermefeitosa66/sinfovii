class ConfirmationController < ApplicationController
  def index
  	usuario = User.find(params[:id])
  	usuario.status = :confirmado
  	usuario.registereds.each do |curso|
  		curso.pay = :confirmed
  	end

  	usuario.save
  end

end
