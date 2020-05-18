/*
 * Add HTML attribute tabindex="0" to element with .CLASS_NAME
 * @see - https://api.jquery.com/attr/
 * @see - https://api.jquery.com/jQuery.noConflict/
 */
 
jQuery(document).ready(function ($) {
    $('.CLASS_NAME').each(function() {
            var $element = $(this);
            $element.attr("tabindex", "0");
    });
});
