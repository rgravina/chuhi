class ReviewDeck
  def initialize(user, session)
    @session = session
    @user = user
  end
  
  def next
    word = @user.words.next
  end
  
  def mark_correct(word)
    @user.right_answer_for!(word)
  end
  
  def mark_incorrect(word)
    @user.wrong_answer_for!(word)
  end
end