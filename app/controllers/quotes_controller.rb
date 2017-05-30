class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = "<strong>Could not save</strong> the data you entered is invalid. Please enter minimum of 3 characters for both saying and author
      , and maximum of 140 characters for saying and 50 characters for author."
    else 
      flash[:notice] = "The quote you entered has been saved!"
    end
    redirect_to root_path
  end

  def about
  end
  

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end

end

