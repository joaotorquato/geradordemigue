class Excuse < ActiveRecord::Base
  def self.generate(last_excuse_id)
    new_excuse = nil
    loop do
      new_excuse = find(pluck(:id).sample)
      break if last_excuse_id.nil? || last_excuse_id != new_excuse.id
    end
    new_excuse
  end
end
