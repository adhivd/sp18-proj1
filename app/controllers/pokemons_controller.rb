class PokemonsController < ApplicationController
    def capture
        params.permit!
        pokID = params[:id]
        pok = Pokemon.where(id: pokID).first
        pok.trainer_id = current_trainer.id
        pok.save
        redirect_to '/'
    end
    
    def new
        @pokemon = Pokemon.new
    end
    
    def createPok
        params.permit!
#        pokName = params[:name]
#        pokD = params[:ndex]
        pok = Pokemon.create(params[:pokemon])
#        , health: 100, level: 1, trainer_id: current_trainer.id
        pok.health = 100
        pok.level = 1
        pok.trainer_id = current_trainer.id
        pok.save
        if pok.valid?
            redirect_to '/trainers/' + current_trainer.id.to_s
        else
            flash[:error] = pok.errors.full_messages.to_sentence
            redirect_to link_path
        end
    end
end
