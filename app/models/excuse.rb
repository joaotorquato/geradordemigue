class Excuse < ActiveRecord::Base
  def self.generate
    Excuse.all.sample
  end
end
