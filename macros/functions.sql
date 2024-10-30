 {% macro margin_percent(revenue, purchase_price) %}
    ROUND ((({{revenue}} - {{purchase_price}})/{{revenue}}),2) 
 {% endmacro %}

 