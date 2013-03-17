class CardsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @word = Word.new
    @last_word_added = current_user.words.last
  end

  def create
    @word = Word.new(:kanji => params[:word][:kanji], :kana => params[:word][:kana], :translation => params[:word][:translation])
    if @word.save
      current_user.words << @word
      flash[:success] = "Card added to your deck."
      # allow the user to keep adding new words
      redirect_to(:action => :new)
    else
      render :new
    end
  end
end
