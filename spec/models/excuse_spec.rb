require 'rails_helper'

describe Excuse do
  describe '.generate' do
    it 'returns a excuse' do
      excuse = create(:excuse)
      expect(Excuse.generate(nil)).to eq excuse
    end

    it 'returns a different excuse from the last one' do
      create_list(:excuse, 15)
      last_excuse_id = nil
      1000.times do
        new_excuse = Excuse.generate(last_excuse_id)
        expect(new_excuse.id).not_to eq last_excuse_id
        last_excuse_id = new_excuse.id
      end
    end
  end
end
