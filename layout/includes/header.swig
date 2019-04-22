<div class="navbar animated fadeInDown">
    <ul class="nav-list">
        {% for name,value in theme.menu %}
        <li class="nav-item">
            <a href="{{ value }}">{{ name }}</a>
        </li>
        {% endfor %}
    </ul>
</div>
<div class="header animated fadeInDown">
    <div class="title">
        {% if theme.profile.avatar %}
            <a class="avatar" href="/">
                <img src="{{ theme.profile.avatar }}" />
            </a>
        {% else %}
            <a class="name" href="/">
                <h1>{{ config.title }}</h1>
            </a>
        {% endif %}
    </div>
    <div class="description">
        {% if theme.profile.subtitle %}
            <p class="sub-title">{{ theme.profile.subtitle }}</p>
        {% endif %}
        <div class="socials">
            {% if theme.socials.github %}
                <a href="{{ theme.socials.github }}">
                    <i class="remixicon-github-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.weibo %}
                <a href="{{ theme.socials.weibo }}">
                    <i class="remixicon-weibo-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.neteasemusic %}
                <a href="{{ theme.socials.neteasemusic }}">
                    <i class="remixicon-disc-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.twitter %}
                <a href="{{ theme.socials.twitter }}">
                    <i class="remixicon-twitter-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.facebook %}
                <a href="{{ theme.socials.facebook }}">
                    <i class="remixicon-facebook-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.instagram %}
                <a href="{{ theme.socials.instagram }}">
                    <i class="remixicon-instagram-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.youtube %}
                <a href="{{ theme.socials.youtube }}">
                    <i class="remixicon-youtube-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            {% if theme.socials.email %}
                <a href="mailto:{{ theme.socials.email }}">
                    <i class="remixicon-mail-{{ theme.socials.iconstyle }}"></i>
                </a>
            {% endif %}
            <a href="/atom.xml">
                <i class="remixicon-rss-{{ theme.socials.iconstyle }}"></i>
            </a>
        </div>
    </div>
</div>