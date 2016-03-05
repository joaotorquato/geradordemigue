class Excuse < ActiveRecord::Base
  def self.generate
    Excuse.all.shuffle[0]
  end
end
