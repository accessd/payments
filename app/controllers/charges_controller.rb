class ChargesController < ApplicationController
  def create
    @charge = Charge.new(params[:charge])
    @charge.user = current_user
    @charge.save!
    render json: @charge.as_json(only: [:id])
  end
end
