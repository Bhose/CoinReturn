require "minitest/autorun"
require_relative "coinchanger.rb"
class TestCoinChanger < Minitest::Test

def test_assert_that_1_is_1
	assert_equal(1, 1)
end

def test_assert_that_penny_is_1
	value = 1
	assert_equal("penny", coin_checker(value))
end

def test_assert_that_nickel_is_5
	value = 5
	assert_equal("nickel", coin_checker(value))
end

def test_assert_that_dime_is_10_and_quarter_is_25
	value = 10
	value = 25
	assert_equal(["dime", "quarter"], multicoin_return(value))
end



end