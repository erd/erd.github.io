set :js_dir,        'javascripts'
set :css_dir,       'stylesheets'
set :images_dir,    'images'

page "feed.xml", layout: false

activate :deploy do |deploy|
    deploy.method = :git
    deploy.remote = 'origin'
    deploy.branch = 'master'
end

activate :blog do |blog|
    blog.per_page  = 5
    blog.paginate  = true
    blog.page_link = "page/:num"
    blog.default_extension = ".md"

    blog.sources   = "articles/:year-:month-:day-:title.html"
    blog.permalink = "{year}/{month}/{day}/{title}.html"
    blog.summary_separator = /(READMORE)/
end

activate :google_analytics do |ga|
    ga.tracking_id = 'UA-44035610-1'
end

configure :build do
    activate :asset_hash
    activate :minify_css
    activate :minify_javascript
    activate :cache_buster
    activate :relative_assets
end
