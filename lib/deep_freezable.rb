# frozen_string_literal: true

module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      # 配列の各要素をfreeze
      array_or_hash.each(&:freeze)
    when Hash
      # ハッシュの各キーと値をfreeze
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    # 配列自身をfreeze(かつ、これがメソッドの戻り値となる)
    array_or_hash.freeze
  end
end
