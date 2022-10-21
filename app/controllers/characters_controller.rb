class CharactersController < ApplicationController
  def index
    @characters = Character.order(created_at: :desc).page(params[:page])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @characters = Character.where("charName LIKE ?", wildcard_search)
  end

  def show
    @character = Character.find(params[:id])
  end
end
