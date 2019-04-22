<div class="post-container">
    <div class="post animated fadeInDown">
        <div class="post-title">
            <h2>
                <a href="{{ url_for(page.path) }}">{{ page.title }}</a>
            </h2>
            <span class="date">{{ date(page.date, 'YYYY-MM-DD') }}</span>
        </div>
        <div class="post-content markdown">
            {{ page.content }}
        </div>
        <div class="post-footer">
            <div class="meta">
                <div class="info">
                    <span class="field tags">
                        <i class="remixicon-stack-line"></i>
                        {{ list_categories(page.categories, {
                            show_count: false,
                            class: 'article-category',
                            style: 'none',
                            separator: ', '
                        }) }}
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>