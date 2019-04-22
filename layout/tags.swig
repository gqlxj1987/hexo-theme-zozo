<div class="page-tags animated fadeInDown">
    <ul>
        {% for tag in site.tags %}
            <li>
                <a href="{{ url_for(tag.path) }}">
                    <span class="tag-name">{{ tag.name }}</span>
                    <span class="terms-count">{{ tag.posts.length }}</span>
                </a>
            </li>
        {% endfor %}
    </ul>
</div>