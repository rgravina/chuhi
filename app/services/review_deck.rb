class ReviewDeck
  def initialize(user, session)
    @session = session
    @user = user
    unless (session.has_key?(:review) || !session[:review].empty?)
      session[:review] = user.words.review.map(&:id)
    end
  end
  
  def next
    Word.find(@session[:review].first)
  end
  
  def correct(word)
    @user.right_answer_for!(word)
    @session[:review].delete(word.id)
  end
  
  def incorrect(word)
    @user.wrong_answer_for!(word)
    @session[:review].delete(word.id)
  end
end