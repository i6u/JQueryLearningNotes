/**
 * Created by zhouweitao on 16/8/27.
 */

/**
 * 格式化文本长度
 * 需要掌握,参数的定义,默认参数的定义
 * */
(function ($) {
    $.fixedTopicWidth = function (str, options) {
        var settings = $.extend({
            length:8,
            fill:'.',
            fillLength:3
        },options);
        if (str.length>settings.length) {
            var s = str.substr(0, settings.length);
            var fs = '';
            for (var i = 0; i < settings.fillLength; i++) {
                fs += settings.fill;
            }
            return s + fs;
        }else {
            return str;
        }
        return this;
    };

    $.fn.setColor = function (options) {
        var settings = $.extend({
            color:'pink'
        },options);
        this.css('color', settings.color);
        return this;
    };

    $.fn.formatText = function (options) {
        this.each(function () {
            $(this).html($.fixedTopicWidth($(this).html(),options));
        });
        return this;
    };

    $.fn.setReadOnly = function (state) {
        return this.filter('input:text').prop('readOnly', state).css('opacity', state ? 0.5 : 1.0);
    }
})(jQuery);