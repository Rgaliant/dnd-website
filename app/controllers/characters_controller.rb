class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    get_character
  end

  def create
    @character = Character.new(character_params)
    binding.pry
    if @character.save
      redirect_to @character, status: :ok
    else
      render :action => "new"
    end
  end

  def new
    @character = Character.new()
  end

  def update
    get_character

  end

  def destroy
    get_character

  end

  private 

  def get_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :backstory, :skill_class)
  end
end
