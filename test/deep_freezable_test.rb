# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/bank'
require_relative '../lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか？
    assert_equal %w[Japan US India], Team::COUNTRIES
    # 配列自身がfreezeされているか？
    assert Team::COUNTRIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert Team::COUNTRIES.all?(&:frozen?)
  end

  def test_deep_freeze_to_hash
    # 配列の値は正しいか？
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    # ハッシュ自身がfreezeされているか？
    assert Bank::CURRENCIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert(Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? })
  end
end
