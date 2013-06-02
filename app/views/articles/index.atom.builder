#app/views/articles/index.atom.builder
xml.instruct!
xml.feed 'xmlns' => 'http://www.w3.org/2005/Atom' do
  xml.title 'Padrino Sample App'
  xml.link  'rel' => 'self', 'href' => url_for(:articles, :index)
  xml.id    url_for(:articles, :index)
  xml.updated @articles.first.updated_at.strftime "%Y-%m-%dT%H:%M:%SZ" if @articles.any?
  xml.author { xml.name "Ken Team"}

  @articles.each do |article|
    xml.entry do
      xml.title article.title
      xml.link  'rel' => 'alternate', 'href' => url_for(:articles, :show, id: article)
      xml.id    url_for(:articles, :show, id: article)
      xml.update article.updated_at.strftime "%Y-%m-%dT%H:%M:%SZ"
      xml.author { xml.name article.try(:account).try(:email)}
      xml.summary article.body
    end
  end
end