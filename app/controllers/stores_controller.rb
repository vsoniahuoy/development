class StoresController < ApplicationController

  def index

  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.create(store_params)
    if @store.valid?
      redirect_to root_path
   else
      render :new, status: :unprocessable_entity
   end
  end

  private

  def store_params
    params.require(:store).permit(:name, :description, :address)
  end

end
