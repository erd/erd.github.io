Time.zone = "America/Los_Angeles"

activate :blog do |blog|
    # blog.prefix = "blog"
    # blog.permalink = ":year/:month/:day/:title.html"
    # blog.sources = ":year-:month-:day-:title.html"
    # blog.taglink = "tags/:tag.html"
    # blog.layout = "layout"
    # blog.summary_separator = /(READMORE)/
    # blog.summary_length = 250
    # blog.year_link = ":year.html"
    # blog.month_link = ":year/:month.html"
    # blog.day_link = ":year/:month/:day.html"
    # blog.default_extension = ".markdown"
    # blog.paginate = true
    # blog.per_page = 10
    # blog.page_link = "page/:num"

    blog.tag_template = "tag.html"
    blog.calendar_template = "calendar.html"
end

page "/feed.xml", :layout => false

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
# 
# With no layout
# page "/path/to/file.html", :layout => false
# 
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
# 
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :js_dir,        'javascripts'
set :css_dir,       'stylesheets'
set :images_dir,    'images'

configure :build do
    activate :minify_css
    activate :minify_javascript
    activate :cache_buster
    activate :relative_assets
end
