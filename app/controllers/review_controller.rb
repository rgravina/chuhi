require File.expand_path(Rails.root + 'app/services/review_deck', __FILE__)

class ReviewController < ApplicationController
  before_filter :authenticate_user!
  
  def index
  end
  
  def review
    @reviewer = ReviewDeck.new(current_user, session)
    if params[:id]
      word = Word.find(params[:id])
      params[:answer] == 'yes' ? @reviewer.mark_correct(word) : @reviewer.mark_incorrect(word)
    end
    @word = @reviewer.next
    redirect_to(:action => :index) and return unless @word
  end
end
