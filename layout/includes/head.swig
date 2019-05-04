<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ config.title }}</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    {{ css('css/styles.css') }}
    {{ css('css/lib/remixicon.css') }}
    {{ css('css/lib/animate.min.css') }}
    {% if theme.comment.type == 'valine' %}
    <script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
    <script src='//unpkg.com/valine/dist/Valine.min.js'></script>
    {% elseif theme.comment.type == 'gittalk' %}
    <link rel="stylesheet" href="https://unpkg.com/gitalk/dist/gitalk.css">
    <script src="https://unpkg.com/gitalk/dist/gitalk.min.js"></script>
    {% endif %}
</head> 