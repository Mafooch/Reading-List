class Book < ActiveRecord::Base

  belongs_to :genre

  def finished?
    finished_on.present?
  end

  scope :finished, ->{ where.not('finished_on: nil') }
  # '-> is for adding a proc'
  scope :recently_finished, ->{ where('finished_on > ?', 10.days.ago) }

  # could write as class method below
  # def self.recently_finished
  #   where('finished_on > ?', 10.days.ago)
  # end

  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
  # we could've written this (the basic version) as the method below. scope is cleaner and will
  # return all if no keyword is given. note that it's called the same way in the
  # the controller
  # wildcards (%) say that anything can come before or after

  # def self.search(keyword)
  #   if keyword.present?
  #     where(title: keyword)
  #     # since we defined this as a class method with 'self' the where will
  #     # be implicitly called on 'self' which is the Book class in this case
  #   else
  #     all
  #   end
  # end

  before_save :set_keywords # using a callback
  # we're creating and calling this method for the purpose of the search feature
  # putting all the keywords in one place instead of having to fuzzy search
  # across the author, title, etc.. columns we will only search this one column
  # the search feature will be much quicker now!

  protected
  # not part of the public api. don't want to be able to call this from the
  # controller
    def set_keywords
      # keywords = '' -> can't write this way because keywords will only be a
      # local variable and won't reference the model's property. would work if
      # we were wanting to read only but not for property assignment
      self.keywords = [title, author, description].map(&:downcase).join(' ')
        # &: is symbol to proc
        # it knows that the variables in the array are referring to properties on
        # self
    end
end
