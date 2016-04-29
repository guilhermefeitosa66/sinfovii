class MemberController < ApplicationController
  def index
  	@membros = User.where( status: 1)
  end
end
