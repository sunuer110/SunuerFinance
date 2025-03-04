/*Json时间类型转换成Date类型*/
function toDate(JsonDate) {
    JsonDate.replace(/Date\([\d+]+\)/, function (a) { eval('Dates = new ' + a) });
    return Dates;
}
/*Date类型转换成string类型*/
Date.prototype.pattern =
    function (fmt) {
        var o = {
            'M+': this.getMonth() + 1, //月份
            'd+': this.getDate(), //日
            'h+': this.getHours() % 12 == 0 ? 12 : this.getHours() % 12, //小时
            'H+': this.getHours(), //小时
            'm+': this.getMinutes(), //分
            's+': this.getSeconds(), //秒
            'q+': Math.floor((this.getMonth() + 3) / 3), //季度
            'S': this.getMilliseconds() //毫秒
        };
        var week = {
            '0': '\u65e5',
            '1': '\u4e00',
            '2': '\u4e8c',
            '3': '\u4e09',
            '4': '\u56db',
            '5': '\u4e94',
            '6': '\u516d'
        };
        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + '').substr(4 - RegExp.$1.length));
        }
        if (/(E+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, ((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? '\u661f\u671f' : '\u5468') : '') + week[this.getDay() + '']);
        }
        for (var k in o) {
            if (new RegExp('(' + k + ')').test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (('00' + o[k]).substr(('' + o[k]).length)));
            }
        }
        return fmt;
    }

/**
 * Framework7路由
 * 点击Dom时进行Framework7路由
 * 在Dom中的data-route属性设置跳转链接
 * @param {any} selector JQuery选择器
 * @param {any} f7View Framework7视图对象
 */
function f7Route(selector, f7View) {
    $(selector).live('click', function () {
        var url = $(this).data('route');
        f7View.router.load({
            url: url,
        });
    });
}

/**
 * Framework7路由
 * 点击Dom时进行Framework7路由
 * @param {string} selector JQuery选择器
 * @param {any} f7View Framework7视图对象
 * @param {string} url 路由链接地址
 */
function f7RouteUrl(selector, f7View, url) {
    $(selector).live('click', function () {
        f7View.router.load({
            url: url,
        });
    });
}

/**
 * Framework7路由
 * 点击Dom时进行Framework7路由
 * @param {any} selector JQuery选择器
 * @param {any} f7View Framework7视图对象
 * @param {any} options Framework7路由参数
 */
function f7RouteOptions(selector, f7View, options) {
    $(selector).live('click', function () {
        f7View.router.load(options);
    });
}

/**
 * 加载幻灯片（图片）
 * 在Dom中的data-images属性设置图片列表
 * 图片列表格式为：url0|url1|url2（使用'|'分隔路径）
 * @param {string} selector JQuery选择器，只能选择单个Dom元素
 * @param {any} swiperObject Swiper对象
 */
function loadSwiperSlide_Image(selector, swiperObject) {
    //设置幻灯片内容
    var images = $(selector).data('images');
    var imagesPaths = images.split('|');
    var templateSlides = [];
    for (var i = 0; i < imagesPaths.length - 1; i++) {
        templateSlides.push('<div class="swiper-slide"><img src="' + imagesPaths[i] + '" /></div>')
    }
    //添加幻灯片
    swiperObject.appendSlide(templateSlides)
}

/**
 * 加载幻灯片（链接图片）
 * 在Dom中的data-linkimg属性设置图片列表
 * 在Dom中的data-link属性设置链接列表
 * 图片列表格式为：url0|url1|url2（使用'|'分隔路径）
 * 链接列表格式为：url0|url1|url2（使用'|'分隔路径）
 * @param {string} selector JQuery选择器，只能选择单个Dom元素
 * @param {any} swiperObject Swiper对象
 */
function loadSwiperSlide_LinkImage(selector, swiperObject) {
    //设置幻灯片内容
    var images = $(selector).data('images');
    var imagesPaths = images.split('|');
    var link = $(selector).data('link');
    var linkUrls = link.split('|');
    var templateSlides = [];
    for (var i = 0; i < imagesPaths.length - 1; i++) {
        var linkUrl = 'javascript:void(0);';
        if (("null" != linkUrls[i]) && (undefined != linkUrls[i]) && ('' != linkUrls[i])) {
            linkUrl = linkUrls[i];
        }
        else { }
        templateSlides.push('<div class="swiper-slide"><a href="' + linkUrl + '"><img src="' + imagesPaths[i] + '" /></a></div>')
    }

    //添加幻灯片
    swiperObject.appendSlide(templateSlides)
}

/**
 * 获取url指定key的value
 * @param {any} url url链接字符串
 * @param {any} key key值
 */
function getQueryString(url, key) {
    var result = null;

    url = url.split('?')[1];
    var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)", "i");
    var para = url.match(reg);
    if (null != para) {
        result = unescape(para[2]);
    }
    else { }

    return result;
}
