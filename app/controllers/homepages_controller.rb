class HomepagesController < ApplicationController

  def index
    @store =  Store.all
  end


end
