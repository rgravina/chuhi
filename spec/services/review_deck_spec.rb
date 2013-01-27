# -*- encoding: utf-8 -*-
require 'spec_helper'

describe ReviewDeck do
  let(:user){User.create!(:email => 'test@test.com', :password => 'testtest')}
  let(:session){Hash.new}

  it "should accept a user with a deck" do
    reviewer = ReviewDeck.new(user, session)
  end
  
  it "should return the next word to review" do
    user.words << Word.create!(:kanji => 'a', :kana => 'b', :translation => 'c')
    reviewer = ReviewDeck.new(user, session)
    reviewer.next.should == user.words.first
  end
end