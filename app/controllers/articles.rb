SamplePadrino::App.controllers :articles do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index, provides: [:html, :rss, :atom] do
    @articles = Article.all(order: 'created_at desc')
    render 'articles/index'
  end

  get :show, with: :id do
    @article = Article.find_by_id params[:id]
    render 'articles/show'
  end
end
