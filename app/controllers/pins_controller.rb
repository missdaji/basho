class PinsController < ApplicationController
  def index
    @pins = Pin.all
    @pins = policy_scope(Pin)
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR comments ILIKE :query"
      @pins = @pins.where(sql_subquery, query: "%#{params[:query]}%")
    elsif params[:sortbyname].present?
      @pins = @pins.order(:name)
    elsif params[:sortbydate].present?
      @pins = @pins.order(created_at: :desc)
    elsif params[:visited].present?
      @pins = @pins.where(visited: true)
    elsif params[:notyetvisited].present?
      @pins = @pins.where(visited: false)
    end
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

  private

  def pin_params
    params.require(:pin).permit(:photo, :name, :address, :longitude, :latitude, :comments, :icon, :rating, :visited, :private)
  end
end
