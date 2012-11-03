class CardsController < ApplicationController
  def new
    @word = Word.new
  end

  def create
    @word = Word.new(:kanji => params[:word][:kanji], :kana => params[:word][:kana], :translation => params[:word][:translation])
    if @word.save
      current_user.words << @word
      flash[:success] = "Card added to your deck."
      redirect_to(:controller => :deck)
    else
      render :new
    end
  end
end
