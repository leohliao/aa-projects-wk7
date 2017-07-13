require 'rails_helper'

describe 'Guests Bonus' do

  it 'index shows only guests between 40 and 50' do
    get '/api/guests'
    expect(json[0]['name']).to eq('John Smith')
    expect(json[1]['name']).to eq('Jane Doe')
    expect(json[2]['name']).to eq('Job Bluth')
    puts "hello"
    p json
    expect(json.count).to eq(3)

  end
end
