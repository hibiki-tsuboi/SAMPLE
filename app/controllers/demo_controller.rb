class DemoController < ApplicationController
  layout 'front'

  def index
    @items = Item.all
  end
end
