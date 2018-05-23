def checksum(article_text)
  @new_article = article_text.gsub(/[^0-9a-z]/i, '').split('').each_slice(10).to_a
  @new_article.map { |e| e.join("").capitalize! }
end
