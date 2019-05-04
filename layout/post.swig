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
{% if theme.comment.type == 'valine' %}
<div id="vcomments"></div>
<script>
    new Valine({
        el: '#vcomments',
        appId: '{{ theme.comment.valine.appid }}',
        appKey: '{{ theme.comment.valine.appkey }}',
        placeholder: '{{ theme.comment.valine.placeholder }}',
        avatar: '{{ theme.comment.valine.avatar }}',
        recordIP: true,
        visitor: true
    })
</script>
{% elseif theme.comment.type == 'gitalk' %}
<div id="gitalk-container"></div>
<script>
new Gitalk({
  clientID: '{{ theme.comment.gitalk.clientid }}',
  clientSecret: '{{ theme.comment.gitalk.clientsecret }}',
  repo: '{{ theme.comment.gitalk.repo }}',
  owner: '{{ theme.comment.gitalk.owner }}',
  admin: '{{ theme.comment.gitalk.admin }}',
  id: location.pathname,
  distractionFreeMode: false
}).render('gitalk-container')
</script>
{% endif %}