class HomepagesController < ApplicationController

  def index
    @stores = Store.all
  end
  
end
