require 'rails_helper'

feature 'user generates a new excuse' do
  scenario 'successfuly' do
    excuses = create_list(:excuse, 10)

    visit root_path

    click_on 'Gerar migué'
    expect(page_has_any_excuse?(excuses)).to be true
    expect(page).to have_css 'a', text: 'Gerar novo migué'
  end

  # verify if page has any excuse
  def page_has_any_excuse?(excuses)
    excuses.each do |excuse|
      return true if page.text.include? excuse.text
    end
    return false
  end
end
