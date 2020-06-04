class FlaskCardsController < ApplicationController
    def new
      @flask_card = FlaskCard.new
    end

    def create
      @set_card = SetCard.find(params[:set_card_id])
      @flask_card = @set_card.flask_cards.create(flask_card_params)
      redirect_to set_card_path(@set_card)
    end
    def destroy
      @set_card = SetCard.find(params[:set_card_id])
      @flask_card = @set_card.flask_cards.find(params[:id])
      @flask_card.destroy
      redirect_to set_card_path(@set_card)
    end

      private
        def flask_card_params
          params.require(:flask_card).permit(:cach_viet, :cach_doc, :nghia)
        end
end
