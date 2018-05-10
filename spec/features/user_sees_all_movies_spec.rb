require 'rails_helper'

describe 'user index' do
  it 'user can see all movies' do
    movie_1 = Movie.create(title: 'Boss Baby', description:'A baby is a boss')
    movie_2 = Movie.create(title: 'Mean Girls', description:'Girls are mean')
    visit '/movies'

    expect(page).to have_content(movie_1.title)
    expect(page).to have_content(movie_1.description)
    expect(page).to have_content(movie_2.title)
    expect(page).to have_content(movie_2.description)
  end
end
