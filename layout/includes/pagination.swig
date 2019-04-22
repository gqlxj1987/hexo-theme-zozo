<div class="pagination animated fadeInDown">
    {% if page.total > 1 %}
        <div class="page-nav">
            {{ paginator({
                prev_text: '上一页',
                next_text: '下一页'
            }) }}
        </div>
    {% endif %}
</div>