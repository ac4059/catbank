require 'elect.rb'
require 'json'

describe Elect do
  it 'makes an anticipated JSON with an id'  do
    test_vote = Elect.new('cat', 'kitty1234')
    parsed_body = JSON.parse(test_vote.json)
    expect(parsed_body['image_id']).to eq('kitty1234')
  end
  it 'creates an expected JSON voting object using voting intention' do
    test_vote = Elect.new('cat', 'kitty1234')
    parsed_body = JSON.parse(test_vote.json)
    expect(parsed_body['value']).to eq(1)
  end
  it 'passes a vote to the CAT API' do
    test_vote = Elect.new('cat', '4t1')
    expect(test_vote.cast).to eq('OK')
  end
end
