require 'rspec'
require 'coin_combination'

describe 'CoinCombination' do
  let(:coins) { CoinCombination.new(89) }

  describe '#quarters_needed' do
    it 'returns the smallest amount of quarters to make change' do
      expect(coins.quarters_needed).to eq 3
    end

    it 'will change the amount of cents left' do
      expect{ coins.quarters_needed }.to change{ coins.cents }.from(89).to(14)
    end
  end

  describe '#dimes_needed' do
    it 'returns the smallest amount of dimes to make change' do
      expect(coins.dimes_needed).to eq 8
    end

    it 'will change the amount of cents left' do
      expect{ coins.dimes_needed }.to change{ coins.cents }.from(89).to(9)
    end
  end

  describe '#nickels_needed' do
    it 'returns the smallest amount of nickels to make change' do
      expect(coins.nickels_needed).to eq 17
    end

    it 'will change the about of change left' do
      expect{ coins.nickels_needed }.to change{ coins.cents }.from(89).to(4)
    end
  end

  describe '#pennies_needed' do
    it 'returns the smallest amount of pennies to make change' do
      expect(coins.pennies_needed).to eq 89
    end

    it 'will change the amount of change left' do
      expect{ coins.pennies_needed }.to change{ coins.cents }.from(89).to(0)
    end
  end

  describe '#to_s' do
    it 'returns a user freindly output of coins needed to make change' do
      expect(coins.to_s).to eq "You will have 3 quarter(s), 1 dime(s), 0 nickel(s), and 4 penny(ies)"
    end
  end

end
