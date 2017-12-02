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

# def test_assert_that_dime_is_10_and_quarter_is_25
# 	value = 10
# 	value = 25
# 	assert_equal(["dime", "quarter"], multicoin_return(value))
# end



end