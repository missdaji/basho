class PinsController < ApplicationController
  def new
    @pin = Pin.new
    authorize @pin
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    authorize @pin
    if @pin.save
      redirect_to pin_path(@pin)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:photo, :name, :address, :longitude, :latitude, :comments, :icon, :rating, :visited, :private)
  end
end
