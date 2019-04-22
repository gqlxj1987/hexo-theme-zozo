<div class="list-with-title animated fadeInDown">
    {% set last %}
    {% for post in page.posts %}
        {% set year = post.date.year() %}
        {% if year != last %}
            {% set last = year %}
            <div class="listing-title">{{ year }}</div>
        {% endif %}
        <div class="listing-item">
            <div class="listing-post">
                <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
                <div class="post-time">
                    <span class="date">{{ date(post.date, 'MM-DD') }}</span>
                </div>
            </div>
        </div>
    {% endfor %}
</div>
{% include './includes/pagination.swig' %}