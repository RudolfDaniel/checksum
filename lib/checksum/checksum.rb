def checksum(article_text)
  @first_state = article_text.gsub(/[^0-9A-Z]/i, '')
  @second_state = @first_state.split('').each_slice(10).to_a
  @second_state.map { |e| e.join("").capitalize! }
#Here comes the uppercase of vovels
=begin
  @new_article.each do |i|
    if i - 2 =~ /![aeiou]/ && i - 1 =~ /![aeiou]/
      i.uppercase!
    end
  end
=end
#Here comes the sum of the specified checksums
  return @first_state.length.to_s + "-" + @second_state.length.to_s
end
