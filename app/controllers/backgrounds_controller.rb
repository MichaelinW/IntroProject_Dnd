class BackgroundsController < ApplicationController
  def index
    @backgrounds = Background.all
  end

  def show
    @background = Background.find(params[:id])
  end
end
