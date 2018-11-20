class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :update, :destroy]

  def index
    cats = Cat.all
    render json: cats
  end

  def show
    render json: @cat
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.valid?
      @cat.save
      render json: @cat, status: :created
    else
      render json: @cat.errors, status: :unprocessable_entity
    end
  end

  def update
    @cat.update_attributes(cat_params)
  end

  def destroy
    @cat.delete
    render json: @cat.id, status: :accepted
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :age, :enjoys)
  end
end
