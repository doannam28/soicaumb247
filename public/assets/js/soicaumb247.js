function getBaseURL () {
    return location.protocol + "//" + location.hostname+(location.port!=""?':'+location.port:'');
}

let pageYOffset = window.scrollY;
const Soicaumb247 = {
    strip_tags: function (input, allowed) {
        input = input.trim();
        allowed = (((allowed || '') + '')
            .toLowerCase()
            .match(/<[a-z][a-z0-9]*>/g) || [])
            .join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
        const tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
            commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
        return input.replace(commentsAndPhpTags, '')
            .replace(tags, function ($0, $1) {
                return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
            });
    },
    init: function () {
        $('input,textarea').change(function () {
            $(this).val(Soicaumb247.strip_tags($(this).val()));
        });
    },
};
jQuery(document).ready(function(){
    Soicaumb247.init();
})
