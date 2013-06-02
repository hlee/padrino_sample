# app/views/articles/index.rss.builder
xml.instruct!
xml.rss "version" => "2.0", "xmlns:dc" => "http://purl.org/dc/elements/1.1/" do
  xml.channel do
    xml.title "Padrino Blog"
    xml.description "The fantastic padrino sample blog"
    xml.link url_for(:articles, :index)

    for article in @articles
      xml.item do
        xml.title article.title
        xml.description article.body
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link url_for(:articles, :show, :id => article)
      end
    end
  end
end