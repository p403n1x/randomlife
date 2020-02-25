class OptionsController < ApplicationController
before_action :set_category, only: [:index, :create]
before_action :set_option, only: [:show, :update, :destroy]


  def index
    @options = Option.all
  end

  def show
  end

  def create
    @option = Option.new(option_params)
    @option.category = @category
    if @option.save
      redirect_to option_path(@option)
    else
      render :show
    end
  end

  def update
    if @option.update(option_params)
      redirect_to option_path(@option)
    else
      render :show
    end

  end

  def destroy
    @option.destroy
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_option
    @option = Option.find(params[:id])
  end

  def option_params
    params.require(:option).permit(:name, :duration)
  end
end
