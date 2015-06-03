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
end
