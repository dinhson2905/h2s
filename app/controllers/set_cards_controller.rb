class SetCardsController < ApplicationController
  before_action :set_set_card, only: [:show, :edit, :update, :destroy]

  # GET /set_cards
  # GET /set_cards.json
  def index
    @set_cards = SetCard.where(user_id: current_user.id)
  end

  # GET /set_cards/1
  # GET /set_cards/1.json
  def show
  end

  # GET /set_cards/new
  def new
    @set_card = SetCard.new
  end

  # GET /set_cards/1/edit
  def edit
  end

  # POST /set_cards
  # POST /set_cards.json
  def create
    @set_card = SetCard.new(set_card_params)
    @set_card.user_id = current_user.id
    respond_to do |format|
      if @set_card.save
        format.html { redirect_to @set_card, notice: 'Set card was successfully created.' }
        format.json { render :show, status: :created, location: @set_card }
      else
        format.html { render :new }
        format.json { render json: @set_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_cards/1
  # PATCH/PUT /set_cards/1.json
  def update
    respond_to do |format|
      if @set_card.update(set_card_params)
        format.html { redirect_to @set_card, notice: 'Set card was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_card }
      else
        format.html { render :edit }
        format.json { render json: @set_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_cards/1
  # DELETE /set_cards/1.json
  def destroy
    @set_card.destroy
    respond_to do |format|
      format.html { redirect_to set_cards_url, notice: 'Set card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_card
      @set_card = SetCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_card_params
      params.require(:set_card).permit(:title, :user_id)
    end
end
