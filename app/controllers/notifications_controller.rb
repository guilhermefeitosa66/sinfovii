class NotificationsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    user = User.find(params[:id])
    response = PagSeguro::Transaction.find_status_history(user.token)

    response.each do |status|
      puts "STATUS:"
      puts "  code: #{status.code}"
      puts "  date: #{status.date}"
      puts "  notification_code: #{status.notification_code}"
    end
  end
end