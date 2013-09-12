module ArticleHelpers
    def article_date(article)
        article.date.strftime("%b %e, %Y")
    end
end