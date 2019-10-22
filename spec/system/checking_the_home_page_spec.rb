require 'rails_helper'

RSpec.describe 'Checking the homepage' do
  it 'has some content on the home page' do
    visit '/'
    expect(page).to have_content('Hyrax')
  end
end
