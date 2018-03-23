class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = Pokemon.where(trainer_id: params[:id])
  end
    
    def damage
        params.permit!
        pokID = params[:id]
        pok = Pokemon.where(id: pokID).first
        pok.health -= 10
        pok.save
        puts "TESTING TESTING TESTING" + pok.trainer_id.to_s + "hello"
        redirect_to '/trainers/' + pok.trainer_id.to_s
            
        if pok.health <= 0
            pok.destroy
        end
    end

end
