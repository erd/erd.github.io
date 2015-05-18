module ArticleHelpers
    def strip_summary(article)
        article.gsub(/<h1.*>.*<\/h1>/, "")
    end

    def article_date(article)
        article.date.strftime("%b %e, %Y")
    end
end