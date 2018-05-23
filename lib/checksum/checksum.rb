def checksum(article_text)
  article_text.gsub(/[^0-9a-z ]/i, '')
end
