require 'rails_helper'

RSpec.describe 'Searching via the search box on the front page' do
  it 'returns some search results' do
    image = Image.new(title: ['A Nice Title'], creator: ['Someone, Somewhere'], visibility: 'open')
    image.save
    visit '/'
    fill_in 'q', with: 'A Nice Title'
    click_on 'Go'
    expect(page).to have_content('Someone, Somewhere')
  end
end
