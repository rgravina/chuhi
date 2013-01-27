class ReviewDeck
  def initialize(user, session)
    @session = session
    @user = user
    if !session.has_key?(:review) || session[:review].empty?
      review = user.words.review.map(&:id)
      session[:review] = review
      session[:review_total] = review.count
      session[:review_correct] = session[:review_incorrect] = 0
    end
  end
  
  def next
    return nil if @session[:review].empty?
    Word.find(@session[:review].first)
  end
  
  def mark_correct(word)
    @user.right_answer_for!(word)
    @session[:review].delete(word.id)
    @session[:review_correct] += 1
  end
  
  def mark_incorrect(word)
    @user.wrong_answer_for!(word)
    @session[:review].delete(word.id)
    @session[:review_incorrect] += 1
  end
  
  def num_correct
    @session[:review_correct]
  end

  def num_incorrect
    @session[:review_correct]
  end

  def num_total
    @session[:review_total]
  end
end