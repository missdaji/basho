class PinsController < ApplicationController

  def index
    @pins = Pin.all
    @pins = policy_scope(Pin)
  end

  def show
    @pin = Pin.find(params[:id])
    authorize @pin
  end
end
