class PinsController < ApplicationController
  def index
    @pins = Pin.all
    @pins = policy_scope(Pin)
    @filters_list = %i[view query sort_by visited]
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR comments ILIKE :query"
      @pins = @pins.where(sql_subquery, query: "%#{params[:query]}%")
    elsif params[:sort_by] == 'name'
      @pins = @pins.order(:name)
    elsif params[:sort_by] == 'date'
      @pins = @pins.order(created_at: :desc)
    elsif params[:visited] == '1'
      @pins = @pins.where(visited: true)
    elsif params[:visited] == '0'
      @pins = @pins.where(visited: false)
    end
    @markers = @pins.geocoded.map do |pin|
      {
        lat: pin.latitude,
        lng: pin.longitude,
        marker_html: render_to_string(partial: "marker", locals: { pin: pin }) # , locals: {pin: pin}
      }
    end

    @here = params["lat"].to_f, params["lon"].to_f
    # raise
  end

  def show
    @pin = Pin.find(params[:id])
    authorize @pin
    @related_pins = @pin.find_related_tags
  end

  def new
    @pin = Pin.new
    authorize @pin
  end

  def create
    @pin = Pin.new(pin_params)
    # debugger
    if @pin.address.nil?
      @results = Geocoder.search([pin_params[:lat], pin_params[:lon]])
      @pin.address = @results.first.display_name
    end
    @pin.user = current_user
    authorize @pin
    if @pin.save
      tags = params[:pin][:tag_ids]
      tags.each do |tag|
        # next if tag.blank?
        new_tag = ActsAsTaggableOn::Tag.find_by(name: tag)
        @pin.tag_list.add(new_tag)
        @pin.save
      end
      redirect_to pin_path(@pin)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pin = Pin.find(params[:id])
    authorize @pin
  end

  def update
    @pin = Pin.find(params[:id])
    authorize @pin
    @pin.update(pin_params)
    tags = params[:pin][:tag_ids]
      tags.each do |tag|
        new_tag = ActsAsTaggableOn::Tag.where(id: tag.to_i)
        @pin.tag_list.add(new_tag)
        @pin.save
      end
    redirect_to pin_path(@pin)
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
    params.require(:pin).permit(:photo, :name, :address, :longitude, :latitude, :comments, :icon, :rating, :visited, :use_current_location, :lat, :lon, :private, :tag_list)
  end
end
