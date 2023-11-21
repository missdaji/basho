class PinsController < ApplicationController
  def show
    @pin = Pin.find(params[:id])
    authorize @pin
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user
    if @pin.save
      redirect_to pin_path(@pin)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:name, :address, :longitude, :latitude, :comments, :icon, :rating, :visited, :picture_url)
  end
end
