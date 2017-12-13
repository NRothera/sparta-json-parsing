# test the length of the rates hash, since you know how many countries are in there
# test the type and length of exchange rate
# check the date is equal to todays date
# check the acronym of one of the countries to see if its correct
#
#
#

require './spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('../json_exchange.json')
  end

  it 'Should be a hash' do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it 'first key should be EUR' do
    expect(@exchange_rates.get_base_value).to eql("EUR")
  end

  it 'length of "rates" to be 31' do
    expect(@exchange_rates.get_rates_value_length).to eql(31)
  end

  it "first rates country to be AUD" do
    expect(@exchange_rates.get_rates_value.first.first).to eql("AUD")
  end

  it "rates value to be a float" do
    expect(@exchange_rates.get_rates_value.values.first).to be_kind_of(Float)
  end

  it "last rate should be ZAR" do
    expect(@exchange_rates.get_rates_value.keys.last).to eql("ZAR")
  end

  it "length of date to be 10" do
    expect(@exchange_rates.get_date_value.length).to eql(10)
  end


end
