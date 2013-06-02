## What

Sample of padrino related development and deployment

## Demo

heroku:<br/>
http://padrino-sample.herokuapp.com<br/>
http://padrino-sample.herokuapp.com/admin<br/>
signin:<br />
User:     admin@admin.com<br />
Password: password<br />
http://padrino-sample.herokuapp.com/articles<br />
http://padrino-sample.herokuapp.com/articles.rss<br />
http://padrino-sample.herokuapp.com/articles.atom<br />



## How

```ruby
  padrino g project sample_padrino -t shoulda -e haml -c sass -s jquery -d activerecord -b
```

added admin function for article

```ruby
padrino g admin_page article
```