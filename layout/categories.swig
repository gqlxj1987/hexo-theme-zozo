<div class="page-categories animated fadeInDown">
        <ul>
            {% for category in site.categories %}
                <li>
                    <a href="{{ url_for(category.path) }}">
                        <span class="category-name">{{ category.name }}</span>
                        <span class="terms-count">{{ category.posts.length }}</span>
                    </a>
                </li>
            {% endfor %}
        </ul>
    </div>