# frozen_string_literal: true

print 'Text?:'
text = gets.chomp

# 例外処理を組み込んで再入力可能にする
begin
  print 'Pattern?:'
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.size.positive?
  puts "Matched: #{matches.join(',')}"
else
  puts 'Nothing matched'
end
