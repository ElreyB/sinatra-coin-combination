class CoinCombination
  attr_accessor (:cents)

  def initialize(cents)

    @cents = cents
  end

  def quarters_needed
    # binding.pry
    quarters = @cents / 25
    @cents -= quarters * 25
    quarters
  end

  def dimes_needed
    dimes = @cents / 10
    @cents -= dimes * 10
    dimes
  end

  def nickels_needed
    nickels = @cents / 5
    @cents -= nickels * 5
    nickels
  end

  def pennies_needed
    pennies = @cents
    @cents -= pennies
    pennies
  end

  def to_s

    "You will have #{quarters_needed} quarter(s), #{dimes_needed} dime(s), #{nickels_needed} nickel(s), and #{pennies_needed} penny(ies)"

  end
end
