class StoresController < ApplicationController

  def new
    @store = Store.new
  end

  def create
    @store = Store.create(store_params)
    redirect_to root_path
  end

  private

  def store_params
    params.require(:store).permit(:name, :description, :address)
  end

end
