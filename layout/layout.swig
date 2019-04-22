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
</body>
</html>