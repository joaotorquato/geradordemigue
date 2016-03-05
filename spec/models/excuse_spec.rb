require 'rails_helper'

describe Excuse do
  describe '#generate' do
    it 'returns a excuse' do
      excuse = create(:excuse)
      expect(Excuse.generate).to eq excuse
    end

    it 'returns a random excuse' do
      excuses = create_list(:excuse, 10)
      expect(is_equal?(excuses)).to be true
    end

    # generate should be equal to any excuse
    def is_equal?(excuses)
      generate = Excuse.generate
      excuses.each do |excuse|
        return true if generate.text.include? excuse.text
      end
      return false
    end

  end
end
