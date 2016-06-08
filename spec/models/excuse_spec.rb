require 'rails_helper'

describe Excuse do
  describe '.generate' do
    it 'returns a excuse' do
      excuse = create(:excuse)
      expect(Excuse.generate(nil)).to eq excuse
    end

    it 'returns a different excuse from the last one' do
      create_list(:excuse, 20)
      last_excuse = nil
      1000.times do
        new_excuse = Excuse.generate(last_excuse)
        expect(new_excuse).not_to eq last_excuse
        last_excuse = new_excuse
      end
    end
  end
end
