require 'rails_helper'

feature 'user generates a new excuse' do
  scenario 'successfuly' do
    excuses = create_list(:excuse, 10)

    visit root_path

    click_on 'Gerar migué'
    expect(has_any_excuse?(excuses)).to be true
  end

  # verify if page has any excuse
  def has_any_excuse?(excuses)
    excuses.each do |excuse|
      return true if page.text.include? excuse.text
    end
    return false
  end
end
