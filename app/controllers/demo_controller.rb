class DemoController < ApplicationController
  layout 'front'

  def index
    @item = Item.all.first
  end
end
