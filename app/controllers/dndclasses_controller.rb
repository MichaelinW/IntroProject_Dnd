class DndclassesController < ApplicationController
  def index
    @dndclasses = Dndclass.all
  end

  def show
    @dndclass = Dndclass.find(params[:id])
  end
end
