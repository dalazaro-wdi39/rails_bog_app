class CreaturesController < ApplicationController

  def index
    # get all creatures from db and save to instance variable
    @creatures = Creature.all
    # default behavior is to render: index
  end

  def new
    @creature = Creature.new
    # default behavior is to render :new
  end

  def create
    # create a new creature in the db from form params
    creature = Creature.new(creature_params)

    # if creature saves, redirect to route that displays all creatures
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
    # default behavior is to render :show
  end

  def edit
    #grab creature id
    creature_id = params[:id]

    #find creature by id in db
    @creature = Creature.find_by_id(creature_id)

    # default behavior is to render :edit
  end

  def update
    creature_id = params[:id]

    creature = Creature.find_by_id(creature_id)

    creature.update_attributes(creature_params)

    redirect_to creature_path(creature)
  end

  def destroy
    creature_id = params[:id]

    creature = Creature.find_by_id(creature_id)

    creature.destroy

    redirect_to creatures_path
  end

  private

  def creature_params
    # whitelist params
    params.require(:creature).permit(:name, :description)
  end

end
