xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
    xml.title "Erich Douglass"
    xml.id "http://erd.github.io/"
    xml.link "href" => "http://erd.github.io/"
    xml.link "href" => "http://erd.github.io/feed.xml", "rel" => "self"
    xml.updated blog.articles.first.date.to_time.iso8601
    xml.author { xml.name "Erich Douglass" }

    blog.articles[0..5].each do |article|
        xml.entry do
            xml.title article.title
            xml.link "rel" => "alternate", "href" => article.url
            xml.id article.url
            xml.published article.date.to_time.iso8601
            xml.updated article.date.to_time.iso8601
            xml.author { xml.name "Erich Douglass" }
            xml.content article.body, "type" => "html"
            xml.summary article.summary, "type" => "html"
        end
    end
end