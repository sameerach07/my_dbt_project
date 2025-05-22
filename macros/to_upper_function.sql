{% macro to_upper_function(first_name)%}
    upper({{ first_name }})
{% endmacro%}
