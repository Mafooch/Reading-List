class Book < ActiveRecord::Base

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

  scope :search, ->(keyword){ where(title: keyword) if keyword.present? }
  # we could've written this as the method below. scope is cleaner and will
  # return all if no keyword is given. note that it's called the same way in the
  # the controller
  
  # def self.search(keyword)
  #   if keyword.present?
  #     where(title: keyword)
  #     # since we defined this as a class method with 'self' the where will
  #     # be implicitly called on 'self' which is the Book class in this case
  #   else
  #     all
  #   end
  # end

end
