<!DOCTYPE html>
<html lang="en">
{% include './includes/head.swig'%}
<body>
    <div class="container animated">
        {% include './includes/header.swig' %}
        <div class="content">
            {{ body }}
        </div>
    </div>
    {% include './includes/footer.swig' %}
    {# 今日诗词 Thanks to https://www.jinrishici.com/ #}
    {% if theme.daily_poetry %}
        <script src="https://sdk.jinrishici.com/v2/browser/jinrishici.js" charset="utf-8"></script>
    {% endif %}
</body>
</html>