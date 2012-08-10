class GatewayNotificationsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @notification = GatewayInputNotification.create!(params: params, gateway: params[:gateway], raw_post: request.raw_post)

    if @notification.complete? && @notification.acknowledge
      @notification.charge.approve unless @notification.charge.ok?
      render :text => @notification.success_response
    else
      @notification.charge.failed!
      head :bad_request
    end
  end

  def success
    redirect_to root_url, notice: "Success"
  end

  def fail
    redirect_to root_url, error: "Fail"
  end

end
