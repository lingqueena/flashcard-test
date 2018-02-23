class DecksController < ApplicationController
  def index
    if decks_excluded != nil
      @deck = Deck.decks_included
    else
      @deck = Deck.all
    end
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end
      

  def create
    @deck = Deck.new(decks_params)

    if @deck.save
      redirect_to decks_path
    else
      render :new
    end
  end

  def edit
    @decks = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])

    if @deck.update(decks_params)
      redirect_to decks_path
    else
      render :edit
    end
    
  end

  def destroy
    @deck = Deck.find(params[:id])

    @deck.destroy
    redirect_to decks_path

  end

  def show
  end

  private 
  def decks_params
    params.require(:deck).permit(:hashtag)
  end


end
