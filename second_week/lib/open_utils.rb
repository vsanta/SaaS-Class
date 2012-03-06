module StringHelper
  def remove_punctuation_and_spaces word
    remove_punctuation(word).gsub(/\s+/, '')
  end

  def remove_punctuation word
    word.gsub(/[^a-zA-Z0-9\s]/, '')
  end
end

module  Enumerable

  def palindrome?
    a = []
    self.each do |e|
      a.push e
    end
    a == a.reverse
  end

end

class String
  include StringHelper

  def palindrome?
    cleaned_up_word = remove_punctuation_and_spaces(self).downcase
    cleaned_up_word == cleaned_up_word.reverse
  end

end

class Numeric
  @@currencies =  {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}


  def in currency
    normalized_currency = singular_currency currency
    if @original_currency == "dollar"
      (self /  @@currencies[normalized_currency])
    elsif normalized_currency == "dollar"
      apply_convertion_to_dollar
    else
      converted_to_dollar = apply_convertion_to_dollar
      converted_to_dollar.dollar.in(normalized_currency.to_sym)
    end
  end
  def method_missing(method_id)
    @original_currency = singular_currency(method_id)
    if @@currencies.has_key?(@original_currency) or @original_currency == "dollar"
      self
    else
      super
    end
  end

  private
  def apply_convertion_to_dollar
    (self *  @@currencies[@original_currency])
  end
  def singular_currency currency
    currency.to_s.gsub( /s$/, '')
  end
end
