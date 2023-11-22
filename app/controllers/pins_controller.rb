class PinsController < ApplicationController

  def index
    @pins = Pin.all
    @pins = policy_scope(Pin)
  end

  def show
    @pin = Pin.find(params[:id])
    authorize @pin
  end

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

  def tagged
    if params[:tag].present?
      @pins = Pin.tagged_with(params[:tag])
    else
      @pins = Pin.all
    end
  end

  def visit
    @pin = Pin.find(params[:id])
    authorize @pin
    @pin.visited = true
    @pin.save
    redirect_to pin_path, status: :see_other, notice: "Pin marked as visited!"
  end

  def to_visit
    @pin = Pin.find(params[:id])
    authorize @pin
    @pin.visited = false
    @pin.save
    redirect_to pin_path, status: :see_other, notice: "Pin marked as non visited!"
  end

  def public
    @pin = Pin.find(params[:id])
    authorize @pin
    @pin.private = false
    @pin.save
    redirect_to pin_path, status: :see_other, notice: "Pin marked as public!"
  end

  def private
    @pin = Pin.find(params[:id])
    authorize @pin
    @pin.private = true
    @pin.save
    redirect_to pin_path, status: :see_other, notice: "Pin marked as private!"
  end

  private

  def pin_params
    params.require(:pin).permit(:photo, :name, :address, :longitude, :latitude, :comments, :icon, :rating, :visited, :private, tag_list: [])
  end
end
