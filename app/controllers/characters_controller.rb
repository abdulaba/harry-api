class CharactersController < ApplicationController
  before_action :set_character, only: %i[show update destroy]
  def index
    characters = Character.all
  end
  def show
    
  end

  def create
    character = Character.new(character_params)
  end

  def update
    character.update(character_params)
  end

  def destroy
    character.destroy
  end

  private
  def set_character
    character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :actor, :review, :image_url)
  end
end