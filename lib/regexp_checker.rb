print 'Text?:'
text = gets.chomp
# 動作確認のため変数の中身を表示
print 'Pattern?:'
pattern = gets.chomp

regexp = Regexp.new(pattern)
matches = text.scan(regexp)
if matches.size > 0
    puts "Matched: #{matches.join(',')}"
else
    puts "Nothing matched"
end