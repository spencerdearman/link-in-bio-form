class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor
    render ({ :template => "item_templates/backdoor"})
  end

  def create
    i = Item.new
    i.link_url = params.fetch("link_url")
    i.link_description = params.fetch("link_description")
    i.thumbnail_url = params.fetch("thumbnail_url")
    i.save
    redirect_to("/")
  end

end
