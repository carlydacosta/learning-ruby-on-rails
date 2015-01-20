class PinsController < ApplicationController
  # before action is saying go to the set_pin function first, then the show, edit, update, and destroy.
  # so @pin in the set_pin function at the bottom is accessed first before the other functions. 
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :destroy]
  # makes user sign in when trying to visit any page except the index or show pages
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html
# Read/show all the pins
  def index
    @pins = Pin.all
    respond_with(@pins)
  end
# Read the pin
  def show
    respond_with(@pin)
  end
# Create new pin
  def new
    @pin = current_user.pins.build
  end

  def edit
  end

# This is actually using the new action + create action
  def create
    @pin = current_user.pins.build(pin_params)
    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created!'
    else
      render action: 'new'
    end
  end
# This is actually using the edit and update action
  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated!'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def correct_user
      @pin = current_user.pins.find_by(id: params[:id])
      redirect_to pins_path, notice: "Not authorized to edit this pin." if @pin.nil?
    end

    def pin_params
      params.require(:pin).permit(:description)
    end
end
