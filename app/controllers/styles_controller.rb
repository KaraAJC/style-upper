class StylesController < ApplicationController
  def index
    @work_items = StyleItem.where(item_type: 'work')
  end

  def week_index
    @week_items = StyleItem.where(item_type: 'weekend')
  end

  def date_index
    @date_items = StyleItem.where(item_type: 'datenight')
  end

  def casual_index
    @casual_items = StyleItem.where(item_type: 'casual')
  end
  
end
