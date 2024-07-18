{% set myname ="upendra"%} -- Variable in JIJA
{{ myname }} -- Calling Variable
{% set fruits = ["apple", "banna", "barger", "grapes"] %}
{% set k = '' %}
{%- for k in fruits -%} -- for loop
    {% if k == "barger" %} {%- set name = "barger" -%} -- if condition (- for removing spaces between lines)
    {% else %} {%- set name = "fruit" -%}
    {% endif %}
    food {{ k }} type is {{ name }}
{%- endfor -%}
