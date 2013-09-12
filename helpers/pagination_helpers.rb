module PaginationHelpers
    def locals_for(page, key)
        page && page.metadata[:locals][key]
    end

    def pagination_links
        prev_link = pagination_item('&laquo;', locals_for(current_page, 'prev_page').try(:url))
        next_link = pagination_item('&raquo;', locals_for(current_page, 'next_page').try(:url))

        items = []

        # Add the current page
        page = current_page
        items << pagination_item_for(page)

        # Add the prior pages
        while page = locals_for(page, 'prev_page')
            items.unshift pagination_item_for(page)
        end

        # Add all subsequent pages
        page = current_page

        while page = locals_for(page, 'next_page')
            items << pagination_item_for(page)
        end

        # Combine the items with the prev/next links
        items = [prev_link, items, next_link].flatten

        content_tag(:ul, items.join)
    end

    def pagination_item_for(page)
        link_title = page.metadata[:locals]['page_number']
        pagination_item(link_title, page.url)
    end

    def pagination_item(link_title, link_path, options = {})
        if link_path == current_page.url
            content = content_tag(:span, link_title)
            options[:class] = "active"
        elsif link_path
            content = link_to(link_title, link_path)
        else
            content = content_tag(:span, link_title)
            options[:class] = "disabled"
        end

        content_tag(:li, content, options)
    end
end