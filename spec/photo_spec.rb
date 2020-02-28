require 'photo.rb'

describe Photo do
  it 'receives a URL address from within catapi' do
    test_case = Photo.new
    test_case.view_random_photo
    expect(test_case.url_to_retrieve).to include('catapi')
  end
  it 'receives a class variable' do
    test_case = Photo.new
    test_case.view_random_photo
    another_test = Photo.new
    sample_to_test = another_test.url_link
    expect(sample_to_test).to include('catapi')
  end
end
