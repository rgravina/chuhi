class DeckController < ApplicationController
  before_filter :authenticate_user!

  def index
    redirect_to(:controller => :cards, :action => :new) if current_user.words.count == 0
  end
end
