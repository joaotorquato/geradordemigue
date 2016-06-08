class Excuse < ActiveRecord::Base
  def self.generate(last_excuse)
    new_excuse = nil
    loop do
      new_excuse = find(pluck(:id).sample)
      break if last_excuse != new_excuse
    end
    new_excuse
  end
end
