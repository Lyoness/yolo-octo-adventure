require 'spec_helper'

describe 'localhost root', sauce: true do
  it 'Does not explode' do
    visit 'http://localhost:8000/'
    page.should have_content 'oh hai'
  end
end
