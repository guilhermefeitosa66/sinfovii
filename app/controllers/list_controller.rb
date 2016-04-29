class ListController < ApplicationController
  def index
  	@membros = User.where(status: 0)
  end
end
