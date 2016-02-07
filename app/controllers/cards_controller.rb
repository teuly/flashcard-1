class CardsController < ApplicationController

<<<<<<< HEAD
def new
  @card=Card.new
end

def edit
  @card = Card.find(params[:id])
end

def show
	@card = Card.find(params[:id])
end

def create
  @card=Card.new(card_params)
  if @card.save
    redirect_to @card
  else 
  	render 'new'  
  end
end

def update
  @card = Card.find(params[:id])
  if @card.update(card_params)
  	redirect_to @card
  else
  	render 'edit'
  end  	
end
  
def index
  @cards = Card.all
end

def destroy 
 	@card = Card.find(params[:id])
  @card.destroy  
  redirect_to cards_path
end

private 
  def  card_params
    params.require(:card).permit(:translated_text, :original_text, :review_date) 	
  end
end
=======
  def show
	@card = Card.find(params[:id])
  end

  def index
    @cards = Card.all
  end

 def new
 end

 end	
>>>>>>> af522a6195add78cf4cecd2d5b6337d5ebb0a3c1
