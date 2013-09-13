Time.zone = 'America/Los_Angeles'

set :js_dir,        'javascripts'
set :css_dir,       'stylesheets'
set :images_dir,    'images'

#
# Enable analytics
#
activate :google_analytics do |analytics|
    analytics.tracking_id = 'UA-44035610-1'
end

#
# Enable blog
#
activate :blog do |blog|
    blog.per_page = 5
    blog.paginate = true
    blog.page_link = "page/:num"
    blog.default_extension = ".md"

    blog.sources = "articles/:year-:month-:day-:title.html"
    blog.summary_separator = /(READMORE)/
end

#
# Enable RSS feed
#
page "/feed.xml", :layout => false

configure :build do
    activate :minify_css
    activate :minify_javascript
    activate :cache_buster
    activate :relative_assets
end
