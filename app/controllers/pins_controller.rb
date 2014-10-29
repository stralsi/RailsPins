class PinsController < ApplicationController
  before_action :find_pin, only:[:show, :edit, :update, :destroy, :like]
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy, :like]

  def index
    @pins = Pin.all.order(:created_at).reverse_order
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to @pin, notice: 'Pin created successfully'
    else
      render 'new'
    end
  end

    def show
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin updated successfully'
    else
      render 'edit'
    end
  end

  def destroy
    if @pin.destroy
      redirect_to @pin, notice: 'Pin was deleted successfully'
    else
      render 'show'
    end
  end

  def like
    current_user.likes @pin
    redirect_to @pin, notice: 'You liked this pin, awesome!'
  end

  private
  def find_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end
end
