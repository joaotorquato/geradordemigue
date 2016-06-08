require 'rails_helper'

feature 'User generates a new excuse' do
  scenario 'successfuly' do
    excuse = create(:excuse)

    visit root_path

    click_on 'Gerar migué'
    expect(page).to have_content excuse.text
    expect(page).to have_css 'a', text: 'Gerar novo migué'
  end

  scenario '50 times, always different from the last one' do
    create_list(:excuse, 3)

    visit root_path

    click_on 'Gerar migué'
    last_excuse = nil
    50.times do
      new_excuse = page.first('.excuse-textarea').text
      expect(new_excuse).not_to be eq last_excuse
      last_excuse = new_excuse
      click_on 'Gerar novo migué'
    end
  end
end
