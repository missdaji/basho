class PinsController < ApplicationController
<<<<<<< HEAD


  def index
    @pins = Pin.all
=======
  def show
    @pin = Pin.find(params[:id])
    authorize @pin
>>>>>>> d99c348c2d0c3fa8f1c3d4c2b5e6070fb771d93e
  end
end
