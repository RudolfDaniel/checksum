def checksum(article_text)
  article_text.gsub(/[^0-9a-z]/i, '').split('').each_slice(10).to_a
end
