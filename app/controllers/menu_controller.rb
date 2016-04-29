class MenuController < ApplicationController
  before_action :choose_index_page, only: [:new_index]

  def index
  end

  def new_index
  end

  def dashboard
  end

  def certificado
    @courses = current_user.registereds.where(pay: 1)

    unless current_user.status == 'confirmado'
      redirect_to root_path, notice: 'É preciso efetuar o pagamento para poder realizar a emissão de certificados!'
    end
  end

  private
    def choose_index_page
      redirect_to dashboard_path if user_signed_in? 
    end
end
