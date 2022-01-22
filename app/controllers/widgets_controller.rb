class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
    render :index
  end
end
