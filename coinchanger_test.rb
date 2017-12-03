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

def test_assert_that_10_returns_dime
	change = 10
	assert_equal({:dime => 1}, coin_checker(change))
end

def test_assert_that_25_returns_quarter
	change = 25
	assert_equal({:quarter => 1}, coin_checker(change))
end

def test_assert_that_27_returns_a_quarter_and_two_pennies
	change = 27
	assert_equal({:quarter => 1, :penny => 2}, coin_checker(change))
end

def test_assert_that_50_returns_2_quarters
	change = 50
	assert_equal({:quarter => 2}, coin_checker(change))
end

def test_assert_that_63_returns_correct_change
	change = 63
	assert_equal({:quarter => 2, :dime => 1, :penny => 3}, coin_checker(change))
end

 def test_assert_that_100_returns_dollar
 	change = 100
 	assert_equal({:dollar => 1}, coin_checker(change))
 end

 def test_assert_that_105_returns_dollar_and_nickel
 	change = 105
 	assert_equal({:dollar => 1, :nickel => 1}, coin_checker(change))
 end

 def test_assert_that_168_returns_correct_change
 	change = 168
 	assert_equal({:dollar => 1, :quarter => 2, :dime => 1, :nickel => 1, :penny => 3}, coin_checker(change))
 end

end