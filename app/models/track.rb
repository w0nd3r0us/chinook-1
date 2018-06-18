class Track < ApplicationRecord
  # scope :short, -> { self.length_less_than_or_equal(180000) }

  def self.short
    return self.length_less_than_or_equal(180000)
  end

  def self.medium
    return self.length_greater_than(180000).length_less_than_or_equal(360000)
  end

  def self.long
    return self.length_greater_than(360000)
  end

  def self.length_less_than_or_equal(milliseconds)
    return self.all if milliseconds == nil
    return self.where('milliseconds <= ?', milliseconds)
  end

  def self.length_greater_than(milliseconds)
    return self.all if milliseconds == nil
    return self.where('milliseconds > ?', milliseconds)
  end

  def hype_intro
    return "#{self.name} is the latest cool track!"
  end

  # def set_created_at_to_now
  #
  # end

end

# Track.short
