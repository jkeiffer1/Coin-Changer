require "minitest/autorun"
require_relative "Hash_coin_changer.rb"
class Coin_changer_test < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_hash_for_1_cent
		assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 1}, coin_changer(1))
	end

	def test_hash_for_1_nickel
		assert_equal({quarter: 0, dime: 0,nickel: 1, penny: 0},coin_changer(5))
	end

	def test_1_dime
		assert_equal({quarter: 0, dime: 1, nickel: 0, penny: 0}, coin_changer(10))
	end




end