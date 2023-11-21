class PinsController < ApplicationController
  def show
    @pin = Pin.find(params[:id])
    authorize @pin
  end
end
