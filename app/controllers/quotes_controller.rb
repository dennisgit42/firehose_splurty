class QuotesController < ApplicationController
  def index
    @Quote = Quote.order("RANDOM()").first
    render :about
  end



  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = "<strong>Could not save</strong> the data you entered is invalid."
    end
    redirect_to root_path
  end

  def about
  end
  

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end

end

