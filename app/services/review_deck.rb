class ReviewDeck
  def initialize(user)
    @user = user
  end
  
  def next
    @user.words.review.first
  end
  
  def correct(word)
    @user.right_answer_for!(word)
  end
  
  def incorrect(word)
    @user.wrong_answer_for!(word)
  end
end