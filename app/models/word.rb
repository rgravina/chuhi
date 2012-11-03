class Word < ActiveRecord::Base
  attr_accessible :kanji, :kana, :translation
  validates_presence_of :kanji, :kana, :translation
end
