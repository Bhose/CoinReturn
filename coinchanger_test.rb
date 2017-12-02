require "minitest/autorun"
require_relative "coinchanger.rb"
class TestCoinChanger < Minitest::Test

def test_assert_that_1_is_1
	assert_equal(1, 1)
end

def test_assert_that_1_returns_penny
	change = 1
	assert_equal({:penny => 1}, coin_checker(change))
end

def test_assert_that_5_returns_a_nickel
	change = 5
	assert_equal({:nickel => 1}, coin_checker(change))
end

def test_assert_that_9_returns_a_nickel_and_4_pennies
	change = 9
	assert_equal({:nickel => 1, :penny => 4}, coin_checker(change))
end



end