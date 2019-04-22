{% for post in page.posts %}
    <div class="post animated fadeInDown">
        <div class="post-title">
            <h2>
                <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
            </h2>
        </div>
        {% if theme.basic.summary %}
            <div class="post-description">
                {{ post.description }}
            </div>
        {% endif %}
        <div class="post-footer">
            <div class="meta">
                <div class="info">
                    <span class="field">
                        <i class="remixicon-map-pin-time-{{ theme.socials.iconstyle }}"></i>
                        <span class="date">{{ date(post.date, 'YYYY-MM-DD') }}</span>
                    </span>
                    <span class="field tags">
                        <i class="remixicon-stack-{{ theme.socials.iconstyle }}"></i>
                        {{ list_categories(post.categories, {
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
{% endfor %}
{% include './includes/pagination.swig' %}