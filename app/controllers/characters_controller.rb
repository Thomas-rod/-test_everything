class CharactersController < ApplicationController

  def index
    @characters = Character.all
    @character = Character.new()
  end

  def create
    @character = Character.new(params_character)
    @character.save
    redirect_to root_path, notice: 'Votre joueur a bien été créé'
  end

  private

  def params_character
    params.require(:character).permit(:name)
  end
end
