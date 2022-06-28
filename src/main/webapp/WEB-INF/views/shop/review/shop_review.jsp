<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">

<head>
    <title>리뷰관리</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/easiest/common.css" media="all" charset="utf-8">
    <!-- javascript i18n start -->
    <script async="" src="https://a.clarity.ms/s/0.6.34/clarity.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-LMD9WDQL79&amp;l=dataLayer&amp;cx=c"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H2L994D8BT&amp;l=dataLayer&amp;cx=c"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-NBS7Z7L"></script>
    <script async="" src="https://www.clarity.ms/tag/7pz1hzx5td"></script>
    <script>
        window.CAFE24 = window.CAFE24 || {};
        CAFE24.MANIFEST_CACHE_REVISION = '2206021105';
        CAFE24.getDeprecatedNamespace = function(sDeprecatedNamespace, sSupersededNamespace) {
            var sNamespace = sSupersededNamespace ?
                sSupersededNamespace :
                sDeprecatedNamespace.replace(/^EC_/, '');

            return CAFE24[sNamespace];
        }
    </script>
    <script type="text/javascript" src="/ind-script/i18n.php?lang=ko_KR&amp;domain=admin&amp;v=2206021105"></script>
    <script type="text/javascript">
        ! function() {
            'use strict';
            var re = {
                not_string: /[^s]/,
                not_bool: /[^t]/,
                not_type: /[^T]/,
                not_primitive: /[^v]/,
                number: /[diefg]/,
                numeric_arg: /[bcdiefguxX]/,
                json: /[j]/,
                not_json: /[^j]/,
                text: /^[^\x25]+/,
                modulo: /^\x25{2}/,
                placeholder: /^\x25(?:([1-9]\d*)\$|\(([^\)]+)\))?(\+)?(0|'[^$])?(-)?(\d+)?(?:\.(\d+))?([b-gijostTuvxX])/,
                key: /^([a-z_][a-z_\d]*)/i,
                key_access: /^\.([a-z_][a-z_\d]*)/i,
                index_access: /^\[(\d+)\]/,
                sign: /^[\+\-]/
            };

            function sprintf(key) {
                try {
                    // `arguments` is not an array, but should be fine for this call
                    return sprintf_format(sprintf_parse(key), arguments);
                } catch (e) {
                    return key;
                }
            }

            function vsprintf(fmt, argv) {
                return sprintf.apply(null, [fmt].concat(argv || []));
            }

            function sprintf_format(parse_tree, argv) {
                var cursor = 1,
                    tree_length = parse_tree.length,
                    arg, output = '',
                    i, k, ph, pad, pad_character, pad_length, is_positive, sign;
                for (i = 0; i < tree_length; i++) {
                    if (typeof parse_tree[i] === 'string') {
                        output += parse_tree[i];
                    } else if (typeof parse_tree[i] === 'object') {
                        ph = parse_tree[i]; // convenience purposes only
                        if (ph.keys) { // keyword argument
                            arg = argv[cursor];
                            for (k = 0; k < ph.keys.length; k++) {
                                if (arg == undefined) {
                                    throw new Error(sprintf('[sprintf] Cannot access property "%s" of undefined value "%s"', ph.keys[k], ph.keys[k - 1]));
                                }
                                arg = arg[ph.keys[k]];
                            }
                        } else if (ph.param_no) { // positional argument (explicit)
                            arg = argv[ph.param_no];
                        } else { // positional argument (implicit)
                            arg = argv[cursor++];
                        }

                        if (re.not_type.test(ph.type) && re.not_primitive.test(ph.type) && arg instanceof Function) {
                            arg = arg();
                        }

                        if (re.numeric_arg.test(ph.type) && (typeof arg !== 'number' && isNaN(arg))) {
                            throw new TypeError(sprintf('[sprintf] expecting number but found %T', arg));
                        }

                        if (re.number.test(ph.type)) {
                            is_positive = arg >= 0;
                        }

                        switch (ph.type) {
                            case 'b':
                                arg = parseInt(arg, 10).toString(2);
                                break;
                            case 'c':
                                arg = String.fromCharCode(parseInt(arg, 10));
                                break;
                            case 'd':
                            case 'i':
                                arg = parseInt(arg, 10);
                                break;
                            case 'j':
                                arg = JSON.stringify(arg, null, ph.width ? parseInt(ph.width) : 0);
                                break;
                            case 'e':
                                arg = ph.precision ? parseFloat(arg).toExponential(ph.precision) : parseFloat(arg).toExponential();
                                break;
                            case 'f':
                                arg = ph.precision ? parseFloat(arg).toFixed(ph.precision) : parseFloat(arg);
                                break;
                            case 'g':
                                arg = ph.precision ? String(Number(arg.toPrecision(ph.precision))) : parseFloat(arg);
                                break;
                            case 'o':
                                arg = (parseInt(arg, 10) >>> 0).toString(8);
                                break;
                            case 's':
                                arg = String(arg);
                                arg = (ph.precision ? arg.substring(0, ph.precision) : arg);
                                break;
                            case 't':
                                arg = String(!!arg);
                                arg = (ph.precision ? arg.substring(0, ph.precision) : arg);
                                break;
                            case 'T':
                                arg = Object.prototype.toString.call(arg).slice(8, -1).toLowerCase();
                                arg = (ph.precision ? arg.substring(0, ph.precision) : arg);
                                break;
                            case 'u':
                                arg = parseInt(arg, 10) >>> 0;
                                break;
                            case 'v':
                                arg = arg.valueOf();
                                arg = (ph.precision ? arg.substring(0, ph.precision) : arg);
                                break;
                            case 'x':
                                arg = (parseInt(arg, 10) >>> 0).toString(16);
                                break;
                            case 'X':
                                arg = (parseInt(arg, 10) >>> 0).toString(16).toUpperCase();
                                break;
                        }
                        if (re.json.test(ph.type)) {
                            output += arg;
                        } else {
                            if (re.number.test(ph.type) && (!is_positive || ph.sign)) {
                                sign = is_positive ? '+' : '-';
                                arg = arg.toString().replace(re.sign, '');
                            } else {
                                sign = '';
                            }
                            pad_character = ph.pad_char ? ph.pad_char === '0' ? '0' : ph.pad_char.charAt(1) : ' ';
                            pad_length = ph.width - (sign + arg).length;
                            pad = ph.width ? (pad_length > 0 ? pad_character.repeat(pad_length) : '') : '';
                            output += ph.align ? sign + arg + pad : (pad_character === '0' ? sign + pad + arg : pad + sign + arg);
                        }
                    }
                }
                return output;
            }

            var sprintf_cache = Object.create(null);

            function sprintf_parse(fmt) {
                if (sprintf_cache[fmt]) {
                    return sprintf_cache[fmt];
                }

                var _fmt = fmt,
                    match, parse_tree = [],
                    arg_names = 0;
                while (_fmt) {
                    if ((match = re.text.exec(_fmt)) !== null) {
                        parse_tree.push(match[0]);
                    } else if ((match = re.modulo.exec(_fmt)) !== null) {
                        parse_tree.push('%');
                    } else if ((match = re.placeholder.exec(_fmt)) !== null) {
                        if (match[2]) {
                            arg_names |= 1;
                            var field_list = [],
                                replacement_field = match[2],
                                field_match = [];
                            if ((field_match = re.key.exec(replacement_field)) !== null) {
                                field_list.push(field_match[1]);
                                while ((replacement_field = replacement_field.substring(field_match[0].length)) !== '') {
                                    if ((field_match = re.key_access.exec(replacement_field)) !== null) {
                                        field_list.push(field_match[1]);
                                    } else if ((field_match = re.index_access.exec(replacement_field)) !== null) {
                                        field_list.push(field_match[1]);
                                    } else {
                                        throw new SyntaxError('[sprintf] failed to parse named argument key');
                                    }
                                }
                            } else {
                                throw new SyntaxError('[sprintf] failed to parse named argument key');
                            }
                            match[2] = field_list;
                        } else {
                            arg_names |= 2;
                        }
                        if (arg_names === 3) {
                            throw new Error('[sprintf] mixing positional and named placeholders is not (yet) supported');
                        }
                        parse_tree.push({
                            placeholder: match[0],
                            param_no: match[1],
                            keys: match[2],
                            sign: match[3],
                            pad_char: match[4],
                            align: match[5],
                            width: match[6],
                            precision: match[7],
                            type: match[8]
                        });
                    } else {
                        throw new SyntaxError('[sprintf] unexpected placeholder');
                    }
                    _fmt = _fmt.substring(match[0].length);
                }
                return sprintf_cache[fmt] = parse_tree;
            }

            /**
             * export to either browser or node.js
             */
            /* eslint-disable quote-props */
            if (typeof exports !== 'undefined') {
                exports['sprintf'] = sprintf;
                exports['vsprintf'] = vsprintf;
            }
            if (typeof window !== 'undefined') {
                window['sprintf'] = sprintf;
                window['vsprintf'] = vsprintf;

                if (typeof define === 'function' && define['amd']) {
                    define(function() {
                        return {
                            'sprintf': sprintf,
                            'vsprintf': vsprintf
                        };
                    });
                }
            }
            /* eslint-enable quote-props */
        }();

        (function(root, factory) {
            //amd
            if (typeof define === "function" && define.amd) {
                define(['sprintf-js'], function(sprintf) {
                    return factory(sprintf.vsprintf);
                });

                //commonjs
            } else if (typeof module === "object" && module.exports) {
                module.exports = factory(require('sprintf-js').vsprintf);

                //global
            } else {
                root.Translator = factory(window.vsprintf);
            }

            var i18n = new Translator(TRANSLATIONS);
            window['__'] = function(sMsg, sGroupID) {
                return i18n.p__(sGroupID, sMsg);
            };

            window['__pn'] = function(sMsgID, sGroupID, iValue) {
                if (iValue === undefined || I18N_FN.isNumber(iValue) === false) {
                    iValue = 0;
                }
                return i18n.np__(sGroupID, sMsgID, sMsgID + '.PLURAL', iValue);
            };
        }(this, function(vsprintf) {
            "use strict";

            function Translator(translations) {
                this.dictionary = {};
                this.plurals = {};
                this.domain = null;

                if (translations) {
                    this.loadTranslations(translations);
                }
            }

            Translator.prototype = {
                loadTranslations: function(translations) {
                    var domain = translations.domain || '';

                    if (this.domain === null) {
                        this.domain = domain;
                    }

                    if (this.dictionary[domain]) {
                        mergeTranslations(this.dictionary[domain], translations.messages);
                        return this;
                    }

                    if (translations.fn) {
                        this.plurals[domain] = {
                            fn: translations.fn
                        };
                    } else if (translations['plural-forms']) {
                        var plural = translations['plural-forms'].split(';', 2);

                        this.plurals[domain] = {
                            count: parseInt(plural[0].replace('nplurals=', '')),
                            code: plural[1].replace('plural=', 'return ') + ';'
                        };
                    }

                    this.dictionary[domain] = translations.messages;

                    return this;
                },

                defaultDomain: function(domain) {
                    this.domain = domain;

                    return this;
                },

                gettext: function(original) {
                    return this.dpgettext(this.domain, null, original);
                },

                ngettext: function(original, plural, value) {
                    return this.dnpgettext(this.domain, null, original, plural, value);
                },

                dngettext: function(domain, original, plural, value) {
                    return this.dnpgettext(domain, null, original, plural, value);
                },

                npgettext: function(context, original, plural, value) {
                    return this.dnpgettext(this.domain, context, original, plural, value);
                },

                pgettext: function(context, original) {
                    return this.dpgettext(this.domain, context, original);
                },

                dgettext: function(domain, original) {
                    return this.dpgettext(domain, null, original);
                },

                dpgettext: function(domain, context, original) {
                    var translation = getTranslation(this.dictionary, domain, context, original);

                    if (translation !== false && translation[0] !== '') {
                        return translation[0];
                    }

                    return original;
                },

                dnpgettext: function(domain, context, original, plural, value) {
                    var index = getPluralIndex(this.plurals, domain, value);
                    var translation = getTranslation(this.dictionary, domain, context, original);

                    if (translation[index] && translation[index] !== '') {
                        return translation[index];
                    }

                    return (index === 0) ? original : plural;
                },

                __: function(original) {
                    return format(
                        this.gettext(original),
                        Array.prototype.slice.call(arguments, 1)
                    );
                },

                n__: function(original, plural, value) {
                    return format(
                        this.ngettext(original, plural, value),
                        Array.prototype.slice.call(arguments, 3)
                    );
                },

                p__: function(context, original) {
                    return format(
                        this.pgettext(context, original),
                        Array.prototype.slice.call(arguments, 2)
                    );
                },

                d__: function(domain, original) {
                    return format(
                        this.dgettext(domain, original),
                        Array.prototype.slice.call(arguments, 2)
                    );
                },

                dp__: function(domain, context, original) {
                    return format(
                        this.dgettext(domain, context, original),
                        Array.prototype.slice.call(arguments, 3)
                    );
                },

                np__: function(context, original, plural, value) {
                    return format(
                        this.npgettext(context, original, plural, value),
                        Array.prototype.slice.call(arguments, 4)
                    );
                },

                dnp__: function(domain, context, original, plural, value) {
                    return format(
                        this.dnpgettext(domain, context, original, plural, value),
                        Array.prototype.slice.call(arguments, 5)
                    );
                }
            };

            function getTranslation(dictionary, domain, context, original) {
                context = context || '';

                if (!dictionary[domain] || !dictionary[domain][context] || !dictionary[domain][context][original]) {
                    return false;
                }

                try {
                    I18N_LOG_COLLECT.set(original, context);
                } catch (e) {}

                return dictionary[domain][context][original];
            }

            function getPluralIndex(plurals, domain, value) {
                if (!plurals[domain]) {
                    return value == 1 ? 0 : 1;
                }

                if (!plurals[domain].fn) {
                    plurals[domain].fn = new Function('n', plurals[domain].code);
                }

                return plurals[domain].fn.call(this, value) + 0;
            }

            function mergeTranslations(translations, newTranslations) {
                for (var context in newTranslations) {
                    if (!translations[context]) {
                        translations[context] = newTranslations[context];
                        continue;
                    }

                    for (var original in newTranslations[context]) {
                        translations[context][original] = newTranslations[context][original];
                    }
                }
            }

            function format(text, args) {
                if (!args.length) {
                    return text;
                }

                if (args[0] instanceof Array) {
                    return vsprintf(text, args[0]);
                }

                return vsprintf(text, args);
            }

            return Translator;
        }));

        /**
         * i18n 관련 함수 모음
         * @type {{ordinalSuffixes: string[], ordinalNumber: I18N_FN.ordinalNumber}}
         */
        var I18N_FN = {
            ordinalSuffixes: ['th', 'st', 'nd', 'rd', 'th', 'th', 'th', 'th', 'th', 'th'],

            ordinalNumber: function(iValue) {
                if (iValue === undefined) {
                    return '';
                }

                var iNum = String(iValue).replace(/,/g, "");
                if (this.isNumber(iNum) === false) {
                    return iValue;
                }
                if (__('__LANGUAGE.CODE__') !== 'en_US') {
                    return iValue;
                }
                iNum = Math.abs(iNum);
                iNum = parseFloat(iNum);
                if (((iNum % 100) >= 11 && ((iNum % 100) <= 13)) || iNum % 1 != 0) {
                    return iValue + 'th';
                }

                return iValue + this.ordinalSuffixes[iNum % 10];
            },
            isNumber: function(v) {
                return /^[+-]?\d*(\.?\d*)$/.test(v);
            }
        };

        var I18N_LOG_COLLECT = {
            aTranslationCodes: [],
            bIsCallApiOnLoaded: false,
            request_url: window.location.pathname,

            call: function() {
                var data = I18N_LOG_COLLECT.aTranslationCodes;
                if (data.length === 0) {
                    return false;
                }
                I18N_LOG_COLLECT.aTranslationCodes = [];
                $.ajax({
                    url: '/exec/common/translate/logging',
                    data: {
                        "data": data
                    },
                    type: 'POST',
                    dataType: 'json',
                    success: function(aData) {}
                });
            },
            set: function(sMsg_id, sGroup_id) {
                if (typeof CAFE24.TRANSLATE_LOG_STATUS === 'undefined' || CAFE24.TRANSLATE_LOG_STATUS !== 'T') {
                    return;
                }

                var item = {
                    'request_url': I18N_LOG_COLLECT.request_url,
                    'msg_id': sMsg_id,
                    'group_id': sGroup_id
                };

                if (I18N_LOG_COLLECT.bIsCallApiOnLoaded) {
                    I18N_LOG_COLLECT.aTranslationCodes.push(item);
                    I18N_LOG_COLLECT.call();
                    return true;
                }
                I18N_LOG_COLLECT.aTranslationCodes.push(item);
            },
            loadComplete: function() {
                I18N_LOG_COLLECT.bIsCallApiOnLoaded = true;
                I18N_LOG_COLLECT.call();
            }
        };

        if (typeof CAFE24.TRANSLATE_LOG_STATUS !== 'undefined' && CAFE24.TRANSLATE_LOG_STATUS === 'T') {
            if (document.addEventListener) {
                document.addEventListener("DOMContentLoaded", function() {
                    I18N_LOG_COLLECT.loadComplete();
                }, false);
            } else if (document.attachEvent) {
                document.attachEvent("onreadystatechange", function() {
                    if (document.readyState === "complete") {
                        document.detachEvent("onreadystatechange", arguments.callee);
                        I18N_LOG_COLLECT.loadComplete();
                    }
                });
            }
        }
    </script>
    <!-- javascript i18n end -->
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_suio.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_ui.js" charset="utf-8"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/jquery.mCustomScrollbar.concat.min.js" charset="utf-8"></script>

    <script type="text/javascript" src="/admin/js/jquery.cookie.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/jquery-ui.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/jquery.12r.calendar.js?v=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/stdlib.js?v=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/admin/js/admin_input_format.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/jquery_ui_plugins.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/board/bulletin_preview.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/board/board_admin_bulletin_l_column_manage.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/board/product_image_viewer.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/jslb_ajax.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/HelpCode.js?v=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/Currency/shop_price.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/Currency/shop_currency_format.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/Currency/shop_price_format.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript" src="/admin/js/Currency/shop_price_util.js?vs=19.454.2.20220602.RLS"></script>
    <script type="text/javascript">
        CAFE24.SHOP_CURRENCY_INFO = {
            "1": {
                "aShopCurrencyInfo": {
                    "currency_code": "KRW",
                    "currency_no": "410",
                    "currency_symbol": "\uffe6",
                    "currency_name": "South Korean won",
                    "currency_desc": "\uffe6 \uc6d0 (\ud55c\uad6d)",
                    "decimal_place": "0",
                    "round_method_type": "F"
                },
                "aShopSubCurrencyInfo": null,
                "aBaseCurrencyInfo": {
                    "currency_code": "KRW",
                    "currency_no": "410",
                    "currency_symbol": "\uffe6",
                    "currency_name": "South Korean won",
                    "currency_desc": "\uffe6 \uc6d0 (\ud55c\uad6d)",
                    "decimal_place": "0",
                    "round_method_type": "F"
                },
                "fExchangeRate": 1,
                "fExchangeSubRate": null,
                "aFrontCurrencyFormat": {
                    "head": "",
                    "tail": "\uc6d0"
                },
                "aFrontSubCurrencyFormat": {
                    "head": "",
                    "tail": "\uc6d0"
                }
            }
        };
        CAFE24.SHOP_CURRENCY_INFO[undefined] = CAFE24.SHOP_CURRENCY_INFO[1];
        var SHOP_CURRENCY_INFO = CAFE24.SHOP_CURRENCY_INFO;
    </script>

    <!-- JS Files Start -->

    <script type="text/javascript" src="/admin/js/navigation/menu_action.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
    <script type="text/javascript" src="/admin/js/navigation/top.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
    <script type="text/javascript" src="/admin/js/navigation/snb.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
    <script type="text/javascript" src="/admin/js/navigation/fakescroll.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
    <script type="text/javascript" src="/admin/js/navigation/menu_autocomplete.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
    <script defer="" type="text/javascript" src="/admin/js/navigation/menu_smarthelper.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
    <script type="text/javascript">
        var EC_ADMIN_MENU_TRANSLATE_JS = {
            oJsList: {
                "THIS.MENU.THE.BASIC.MALL": "기본몰에서만 적용되는 메뉴입니다.",
                "BASIC.SHOPPING.MALL": "기본쇼핑몰에서 관리하고 공통 적용되는 메뉴로 기본 쇼핑몰에서만 설정 가능합니다.",
                "THIS.MENU.DOMESTIC.MALLS": "국내몰에서만 적용되는 메뉴입니다.",
                "MENU.AT.OVERSEAS.MALLS": "해외몰에서만 적용되는 메뉴입니다.",
                "MALL.BEING.CREATED": "멀티쇼핑몰이 생성중입니다.\n생성 여부는 [상점관리] - [멀티쇼핑몰 설정]에서 확인해 주세요.",
                "MALL.MENU.PRIVILEGES": "선택하신 쇼핑몰은 메뉴권한이 없습니다.",
                "NETWORK.ERROR.PLEASE.TRY": "네트워크 오류입니다.\n\n잠시 후에 다시 이용해주세요.",
                "THIS.MENU.BASIC.MALL.NDO": "기본몰에서만 적용되는 메뉴입니다.\n기본몰로 이동하시겠습니까?",
                "THIS.MENU.DOMESTIC.MALLS.001": "국내몰에서만 적용되는 메뉴입니다.\n기본몰로 이동하시겠습니까?",
                "MENU.AT.OVERSEAS.MALLS.001": "해외몰에서만 적용되는 메뉴입니다.",
                "USING.SHOPPING.CURRENCIES": "쇼핑 큐레이션을 사용중입니다.\n상품 검색 조건 설정은 상품관리 > 쇼핑큐레이션에서 설정할 수 있습니다.\n해당메뉴로 이동하시겠습니까?"
            }
        };
    </script>
    <script type="text/javascript">
        var IS_SHOW_CHECKLIST = "F";
    </script>
    <script type="text/javascript">
        (function(c, l, a, r, i, t, y) {
            c[a] = c[a] || function() {
                (c[a].q = c[a].q || []).push(arguments)
            };
            t = l.createElement(r);
            t.async = 1;
            t.src = "https://www.clarity.ms/tag/" + i;
            y = l.getElementsByTagName(r)[0];
            y.parentNode.insertBefore(t, y);
        })(window, document, "clarity", "script", "7pz1hzx5td");
    </script>
    <script type="text/javascript" src="/ind-script/moment.php?convert=T&amp;vs=19.454.2.20220602.RLS"></script>
    <!-- JS Files End -->

    <script type="text/javascript">
        $(document).ready(function() {
            FixedSetting.init();
            NoticeSetting.init();

            if (SHOP.isMobileAdmin() === false) {
                BoardAdminBulletinListColumnManage.init();
                ProductImageViewer.init();
                //게시물 미리보기 초기화
                oBulletinPreview.init('layerPreview', 'eBulletinContent', 'layerPreviewPopup', 'board_admin_bulletin_l');
                setCalendar();
            } else {
                ECMOBILE_BULLENTIN_MANAGER.init();
            }

            $('#eMileageMoney').toShopPriceInput($('#EC_SDE_SHOP_NUM').val());

            // 이미지 마우스오버
            $('.fileImg').live('mouseenter', function(event) {
                $('#layerViewImg').html("<img src='" + $(this).attr('imgsrc') + "' style='max-width:480px;'/>");
            });

            $(".btnDate").click(function() {
                var oThis = $(this);

                $('.btnDate').removeClass('selected');
                oThis.addClass('selected');

                var period = oThis.attr('title');
                $('#endDate').val($('#hiddenToday').val());
                setPeriod(period);

                $('input[name="period"]').val(period);
            });

            //모바일 어드민일때 기간버튼값 셋팅
            if (SHOP.isMobileAdmin() === true) {
                //해당 버튼의 시작,종료일 셋팅기능은 mobile_admin_ui.js에서 담당
                $('.ecmobile-btn-calendar').live('click', function() {
                    var iPeriod = parseInt($(this).data('date'), 10);
                    if (isNaN(iPeriod) !== true && iPeriod >= 0) {
                        $('input:hidden[name="period"]').val(iPeriod);
                    }
                });
            }

            function setPeriod(period) {
                var $oEndDateTextInput = $('#endDate');
                var sEndDate = ($oEndDateTextInput.val() != '') ? $oEndDateTextInput.val() : $('#hiddenToday').val();
                var aDate = sEndDate.split('-');

                var oDate = new Date();
                if (period <= 365) {
                    oDate.setFullYear(aDate[0], aDate[1] - 1, aDate[2]);
                    period = parseInt(period);
                    oDate.setDate(oDate.getDate() - period);
                } else {
                    oDate.setFullYear(aDate[0], aDate[1] - 2, aDate[2]);
                }

                var sYear = oDate.getFullYear();
                var sMonth = (oDate.getMonth() + 1).toString();
                if (sMonth.length < 2) {
                    sMonth = '0' + sMonth;
                }
                var sDay = (oDate.getDate()).toString();
                if (sDay.length < 2) {
                    sDay = '0' + sDay;
                }

                $('#startDate').val(sYear + '-' + sMonth + '-' + sDay);
                $('#endDdate').val(sEndDate);
            }

            if ($('#sIsUse12R').val() == 'T') {
                setTimeout(refreshReplyStatus, 10000);
            }

            // 카테고리 이벤트 ECHOSTING-65479
            $('select[name="sel_board_no"]').change(function() {
                var board_category = $('#board_category').val().split('|'); //이전 카테고리값
                var $iboardNo = $(this).val();
                var setBoardCategory = [];

                setBoardCategory.push('<option value=""> ' + __('ALL.CATEGORIES', 'B.BOARD.BULLETIN.L') + '</option>');

                if ($iboardNo == '') {
                    //전체게시판 카테고리
                    $.each(BOARD_CATEGORY_INFO, function(i, boardData) {
                        $.each(boardData, function(i, data) {
                            var selected = '';
                            if (board_category[0] == data.idx) {
                                selected = 'selected="selected"';
                            }
                            setBoardCategory.push('<option value="' + data.idx + '|' + data.category_no + '" ' + selected + '>' + data.category_name + '</option>');
                        });
                    });
                } else {
                    if (typeof BOARD_CATEGORY_INFO[$iboardNo] !== 'undefined') {
                        //해당게시판 카테고리
                        $.each(BOARD_CATEGORY_INFO[$iboardNo], function(i, data) {
                            var selected = '';
                            if (board_category[0] == data.idx) {
                                selected = 'selected="selected"';
                            }
                            setBoardCategory.push('<option value="' + data.idx + '|' + data.category_no + '" ' + selected + '>' + data.category_name + '</option>');
                        });
                    }
                }
                $("#board_category").html(setBoardCategory.join(''));
            });

            //비회원 체크박스 처리
            $("#no_member_article").click(function() {
                if ($(this).is(":checked") == true) {
                    $(this).val('T');
                } else {
                    $(this).val('F');
                }
            });

            // 상품수정 팝업
            $('.eProductModifyLink').click(function(event) {
                event.preventDefault();
                winname = 'product_modify';
                var iWidth = ($('#PRODUCT_VER').val() > 1) ? 1053 : 703;
                option = 'toolbar=no location=no scrollbars=yes resizable=yes width=' + iWidth + ' height=800';
                window.open($(this).attr('href'), winname, option);
            });

            // 목록표시설정 버튼 아래 레이어 팝업 뜨도록 위치만 조절
            $('#eListShowLayerBtn').live('click', function() {
                $('#eListShowLayer').css(
                    "top", $('#eListShowLayer').position().top + $(this).height()
                );
            });

            // (모바일) 보기 갯수 필터 설정 적용시
            $('#ecmobile-filter-apply').click(function() {
                view_board('submit');
            });
        });

        /**
         * 게시
         * ECHOSTING-66448
         */
        function setPost(board_no, no) {
            var sParam = 'board_no=' + board_no + '&no=' + no;
            if (confirm(__('YOU.WANT.THIS.POST', 'B.BOARD.BULLETIN.L'))) {
                $.ajax({
                    url: getMultiShopUrl("/exec/admin/shop1/board/PostAjax"),
                    type: 'POST',
                    data: sParam,
                    dataType: 'json',
                    success: function(aOutputData) {
                        if (aOutputData['result'] == 'T') {
                            $.each(aOutputData.no, function(i, bbsNo) {
                                if ('undefined' != typeof($('#ePostId_' + bbsNo))) $('#ePostId_' + bbsNo).hide();
                            });
                        }
                    }
                });
            }
        }

        // 답변상태 10초마다 갱신
        function refreshReplyStatus() {
            // 결과가 없는 경우 return false;
            if ($('input[name="no[]"]').length === 0) {
                return false;
            }

            // 답변하기 버튼이 없으면 return false;
            if ($('.btn_answer').length === 0) {
                return false;
            }

            var aNo = [];
            $('.btn_answer').each(function() {
                var iNo = $(this).attr('data-no');
                if (iNo) {
                    aNo.push(iNo);
                }
            });

            // 상태확인을 위한 게시글 번호가 없으면 return false;
            if (aNo.length === 0) {
                return false;
            }

            $.ajax({
                type: 'post',
                url: getMultiShopUrl("/exec/admin/shop1/board/ReplyStatusAjax"),
                data: {
                    mode: 'SELECT',
                    no: aNo
                },
                success: function(oResponse) {
                    if (oResponse['result'] == 'T') {
                        var iCount = aNo.length;
                        for (var i = 0; i < iCount; i++) {
                            if (oResponse.hasOwnProperty(aNo[i]) === false) {
                                continue;
                            }

                            var oStatusInfo = oResponse[aNo[i]];
                            var $oReplyStatusMsg = $('#reply_status_msg_' + aNo[i]);

                            if ($oReplyStatusMsg.length === 0) {
                                continue;
                            }

                            var sStatusMsg;
                            if (oStatusInfo['status'] == null) {
                                sStatusMsg = '-';
                            } else if (oStatusInfo['status'] == 'P') {
                                sStatusMsg = oStatusInfo['new_status'] + "<br />(" + oStatusInfo['admin_id'] + ")";
                            } else {
                                sStatusMsg = oStatusInfo['new_status'];
                            }
                            $oReplyStatusMsg.html(sStatusMsg);
                        }
                        // 응답결과가 유효할 때에만 타이머 등록
                        setTimeout(refreshReplyStatus, 10000);
                    }
                }
            });
        }

        // 다국어 재정의
        function getANotAllowBoardGroup(iBoardGroup) {
            switch (iBoardGroup) {
                case '6':
                    return __('GALLERY.BULLETIN', 'B.BOARD.BULLETIN.L');
                    break;
                case '7':
                    return __('BOARD', 'B.BOARD.BULLETIN.L');
                    break;
                case '11':
                    return __('ONE.LINE.NOTE.BOARD', 'B.BOARD.BULLETIN.L');
                    break;
            }
        }

        // 고정글 설정 및 해제
        var FixedSetting = {
            init: function() {
                this.setEvent()
            },
            setEvent: function() {
                // 글고정 지정 버튼
                $('.eFixedBulletinRegist').click(function() {
                    FixedSetting.setFixedBulletinRegist();
                });
                // 글고정 해제 버튼
                $('.eFixedBulletinCancel').click(function() {
                    FixedSetting.setFixedBulletinCancel();
                });
            },
            aNotAllowBoardGroup: [{
                    iBoardGroup: 7,
                    sBoardName: __('BOARD', 'B.BOARD.BULLETIN.L')
                },
                {
                    iBoardGroup: 11,
                    sBoardName: __('ONE.LINE.NOTE.BOARD', 'B.BOARD.BULLETIN.L')
                }
            ],
            getValidBoardGroup: function(iBoardGroup) {
                for (var i = 0; i < this.aNotAllowBoardGroup.length; i++) {
                    if (this.aNotAllowBoardGroup[i].iBoardGroup == iBoardGroup) {
                        alert(sprintf(__('CAN.NOT.USE.FIXED.TEXT', 'B.BOARD.BULLETIN.L'), getANotAllowBoardGroup(iBoardGroup)));
                        return false;
                    }
                }
                return true;
            },
            aValidNo: [],
            setFixedBulletinRegist: function() {
                this.aValidNo = [];
                var oCheckedBulletin = $('input[name="bbs_no[]"]:checked');
                var bIsResult = true;

                // 선택한 게시물이 없는 경우
                if (oCheckedBulletin.length <= 0) {
                    alert(__('PLEASE.SELECT.POST', 'B.BOARD.BULLETIN.L'));
                    return false;
                }

                oCheckedBulletin.each(function() {
                    var iNo = $(this).val();

                    // 사용할 수 없는 게시판 확인
                    if (FixedSetting.getValidBoardGroup($('#iBoardGroup_' + iNo).val()) == false) {
                        bIsResult = false;
                        return false;
                    }
                    if ($('#iNotice_' + iNo).val() == 'T') {
                        alert(__('SUBSCRIBE.ANNOUNCEMENTS', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    }
                    if ($('#iFixed_' + iNo).val() == 'T') {
                        alert(__('REGISTER.DUPLICATE.ENTRIES', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    }
                    FixedSetting.aValidNo.push(iNo);
                });
                // validation 을 통과하지 못한 게시물이 있는 경우
                if (bIsResult === false) {
                    oCheckedBulletin.click();
                    $(".allChk").attr('checked', false);
                    return false;
                }
                var bAnswer = confirm(__('YOU.WANT.SELECTED.POST', 'B.BOARD.BULLETIN.L'));
                if (bAnswer == true) {
                    this.setFixedBulletinAjax('fixed_regist');
                }
            },
            setFixedBulletinCancel: function() {
                this.aValidNo = [];
                var oCheckedBulletin = $('input[name="bbs_no[]"]:checked');
                var bIsResult = true;

                // 선택한 게시물이 없는 경우
                if (oCheckedBulletin.length <= 0) {
                    alert(__('PLEASE.SELECT.POST', 'B.BOARD.BULLETIN.L'));
                    return false;
                }

                oCheckedBulletin.each(function() {
                    var iNo = $(this).val();
                    if ($('#iNotice_' + iNo).val() == 'T') {
                        alert(__('IT.FIXED.PLEASE.SELECT', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    }
                    if ($('#iFixed_' + iNo).val() == 'F') {
                        alert(__('IT.FIXED.PLEASE.SELECT', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    } else {
                        FixedSetting.aValidNo.push(iNo);
                    }
                });
                // validation 을 통과하지 못한 게시물이 있는 경우
                if (bIsResult === false) {
                    oCheckedBulletin.click();
                    $(".allChk").attr('checked', false);
                    return false;
                }
                var bAnswer = confirm(__('ARE.SURE.POSTS.001', 'B.BOARD.BULLETIN.L'));
                if (bAnswer == true) {
                    this.setFixedBulletinAjax('fixed_cancel');
                }
            },
            setFixedBulletinAjax: function(sMode) {
                $.ajax({
                    type: "post",
                    data: {
                        'bbs_no': FixedSetting.aValidNo,
                        'mode': sMode
                    },
                    dataType: 'json',
                    url: "/admin/php/shop1/b/board_admin_bulletin_manage.php",
                    success: function(result) {
                        if (result[0] == '0000') {
                            switch (sMode) {
                                case 'fixed_regist':
                                    FixedSetting.setFixedBulletinAjaxRegistResult();
                                    break;
                                case 'fixed_cancel':
                                    FixedSetting.setFixedBulletinAjaxCancelResult();
                                    break;
                            }
                        } else {
                            alert(__('PROCESSING.FAILED', 'B.BOARD.BULLETIN.L'));
                        }
                    },
                    error: function() {
                        alert(__('PROCESSING.FAILED', 'B.BOARD.BULLETIN.L'));
                    }
                });
            },
            setFixedBulletinAjaxRegistResult: function() {
                alert(__('REGISTERED', 'B.BOARD.BULLETIN.L'));
                view_board('submit');
            },
            setFixedBulletinAjaxCancelResult: function() {
                alert(__('RELEASED', 'B.BOARD.BULLETIN.L'));
                view_board('submit');
            }
        };

        // 공지글 설정 및 해제
        var NoticeSetting = {
            init: function() {
                this.setEvent()
            },
            aNotAllowBoardGroup: [{
                    iBoardGroup: 6,
                    sBoardName: __('GALLERY.BULLETIN', 'B.BOARD.BULLETIN.L')
                },
                {
                    iBoardGroup: 7,
                    sBoardName: __('BOARD', 'B.BOARD.BULLETIN.L')
                },
                {
                    iBoardGroup: 11,
                    sBoardName: __('ONE.LINE.NOTE.BOARD', 'B.BOARD.BULLETIN.L')
                }
            ],
            setEvent: function() {
                // 공지 지정 버튼
                $('.eNoticeBulletinRegist').click(function() {
                    NoticeSetting.setNoticeBulletinRegist();
                });
                // 공지 해제 버튼
                $('.eNoticeBulletinCancel').click(function() {
                    NoticeSetting.setNoticeBulletinCancel();
                });
            },
            aNotAllowBoardGroup: [{
                    iBoardGroup: 7,
                    sBoardName: __('BOARD', 'B.BOARD.BULLETIN.L')
                },
                {
                    iBoardGroup: 11,
                    sBoardName: __('ONE.LINE.NOTE.BOARD', 'B.BOARD.BULLETIN.L')
                }
            ],
            getValidBoardGroup: function(iBoardGroup) {
                for (var i = 0; i < this.aNotAllowBoardGroup.length; i++) {
                    if (this.aNotAllowBoardGroup[i].iBoardGroup == iBoardGroup) {
                        alert(sprintf(__('CAN.NOT.USE.FIXED.TEXT', 'B.BOARD.BULLETIN.L'), getANotAllowBoardGroup(iBoardGroup)));
                        return false;
                    }
                }
                return true;
            },
            aValidNo: [],
            setNoticeBulletinRegist: function() {
                this.aValidNo = [];
                var oCheckedBulletin = $('input[name="bbs_no[]"]:checked');
                var bIsResult = true;

                // 선택한 게시물이 없는 경우
                if (oCheckedBulletin.length <= 0) {
                    alert(__('PLEASE.SELECT.POST', 'B.BOARD.BULLETIN.L'));
                    return false;
                }

                oCheckedBulletin.each(function() {
                    var iNo = $(this).val();
                    // 사용할 수 없는 게시판 확인
                    if (NoticeSetting.getValidBoardGroup($('#iBoardGroup_' + iNo).val()) == false) {
                        bIsResult = false;
                        return false;
                    }
                    if ($('#iNotice_' + iNo).val() == 'T') {
                        alert(__('REGISTER.DUPLICATE.ANNOUNCEMENTS', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    }
                    if ($('#iFixed_' + iNo).val() == 'T') {
                        alert(__('NOT.ADDED.ANNOUNCEMENTS', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    }
                    NoticeSetting.aValidNo.push(iNo);
                });

                // validation 을 통과하지 못한 게시물이 있는 경우
                if (bIsResult === false) {
                    oCheckedBulletin.click();
                    $(".allChk").attr('checked', false);
                    return false;
                }
                var bAnswer = confirm(__('YOU.WANT.SELECTED.POSTS', 'B.BOARD.BULLETIN.L'));
                if (bAnswer == true) {
                    this.setNoticeBulletinAjax('regist');
                }
            },
            setNoticeBulletinCancel: function() {
                this.aValidNo = [];
                var oCheckedBulletin = $('input[name="bbs_no[]"]:checked');
                var bIsResult = true;

                // 선택한 게시물이 없는 경우
                if (oCheckedBulletin.length <= 0) {
                    alert(__('PLEASE.SELECT.POST', 'B.BOARD.BULLETIN.L'));
                    return false;
                }

                oCheckedBulletin.each(function() {
                    var iNo = $(this).val();
                    if ($('#iFixed_' + iNo).val() == 'T') {
                        alert(__('SELECT.NOTICE', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    }
                    if ($('#iNotice_' + iNo).val() == 'F') {
                        alert(__('SELECT.NOTICE', 'B.BOARD.BULLETIN.L'));
                        bIsResult = false;
                        return false;
                    } else {
                        NoticeSetting.aValidNo.push(iNo);
                    }
                });
                // validation 통과하지 못한 게시물이 있는 경우
                if (bIsResult === false) {
                    oCheckedBulletin.click();
                    $(".allChk").attr('checked', false);
                    return false;
                }
                var bAnswer = confirm(__('ARE.SURE.POSTS', 'B.BOARD.BULLETIN.L'));
                if (bAnswer == true) {
                    this.setNoticeBulletinAjax('cancel');
                }
            },
            setNoticeBulletinAjax: function(sMode) {
                $.ajax({
                    type: "post",
                    data: {
                        'bbs_no': NoticeSetting.aValidNo,
                        'mode': sMode
                    },
                    dataType: 'json',
                    url: "/admin/php/shop1/b/board_admin_bulletin_manage.php",
                    success: function(result) {
                        if (result[0] == '0000') {
                            switch (sMode) {
                                case 'regist':
                                    NoticeSetting.setFixedBulletinAjaxRegistResult();
                                    break;
                                case 'cancel':
                                    NoticeSetting.setFixedBulletinAjaxCancelResult();
                                    break;
                            }
                        } else {
                            alert(__('PROCESSING.FAILED', 'B.BOARD.BULLETIN.L'));
                        }
                    },
                    error: function() {
                        alert(__('PROCESSING.FAILED', 'B.BOARD.BULLETIN.L'));
                    }
                });
            },
            setFixedBulletinAjaxRegistResult: function() {
                alert(__('REGISTERED', 'B.BOARD.BULLETIN.L'));
                view_board('submit');
            },
            setFixedBulletinAjaxCancelResult: function() {
                alert(__('RELEASED', 'B.BOARD.BULLETIN.L'));
                view_board('submit');
            }
        }


        /**
         * 게시글 노출기간 설정
         */
        function setDispPriodSetting(type, bbs_no) {
            if (type == 'regist') {
                //유효성 체크
                chkErrorValidition();
            }

            if (type != 'cancel') {
                var start_time = $("#disp_distance_start option:selected").val();
                var end_time = $("#disp_distance_end option:selected").val();

                if (!start_time) {
                    alert(__('START.TIME.MUST.SELECT', 'B.BOARD.BULLETIN.L'));
                    $('#disp_distance_start').focus();
                    return false;
                }

                if (!end_time) {
                    alert(__('EXPOSURE.TIME.MUST', 'B.BOARD.BULLETIN.L'));
                    $('#disp_distance_end').focus();
                    return false;
                }

                if (parseInt(start_time) > parseInt(end_time)) {
                    alert(__('CAN.NOT.GREATER.END.TIME', 'B.BOARD.BULLETIN.L'));
                    $('#disp_distance_start').focus();
                    return false;
                }
            }

            var sSuccessMsg = __('DURATION.SETTING.COMPLETE', 'B.BOARD.BULLETIN.L');
            if (type == 'regist') {
                document.frm.mode.value = 'setDispPriodSetting';
                var sParam = $('#frm').serialize() + '&start_time=' + start_time + '&end_time=' + end_time + '&dispFlag=T';
            } else {
                var sParam = 'mode=setDispPriodSetting&bbs_no[]=' + bbs_no;
                if (type == 'modify') {
                    sParam = sParam + '&start_time=' + start_time + '&end_time=' + end_time + '&dispFlag=T';
                } else if (type == 'cancel') {
                    if (confirm(__('SURE.IMPRESSION.DURATION', 'B.BOARD.BULLETIN.L')) == false) {
                        return false;
                    }
                    sSuccessMsg = __('DURATION.SETTING.TURNED', 'B.BOARD.BULLETIN.L');
                }
            }

            $.ajax({
                url: '/admin/php/shop1/b/board_admin_bulletin_manage.php',
                type: 'POST',
                data: sParam,
                dataType: 'json',
                success: function(result) {
                    if (result[0] == '0000') {
                        if (type == 'regist') {
                            var $checked_list = $("input[name='bbs_no[]']:checked");
                            $checked_list.each(function() {
                                var $span_subject = $(this).closest('tr').find('.span_subject');
                                $span_subject.html('<span><img src="//img.echosting.cafe24.com/admin/btn_board_show.gif" onClick="setDispPriodView(\'' + $(this).val() + '\',\'' + start_time + '\',\'' + end_time + '\');" style="cursor:pointer" alt="' + __('EXPOSURE.SETTINGS', 'B.BOARD.BULLETIN.L') + '" align="absmiddle" /></span>');
                            });
                            $('#bulletin_priod_setting').hide();

                            alert(sSuccessMsg);
                            $('input[name="bbs_no[]"]:checked').attr("checked", false);
                            $('input:checkbox[id="checkBbsNo"]:checked').attr("checked", false);

                        } else {
                            var $checked_list = $("#writer_type_" + bbs_no);
                            var $span_subject = $checked_list.closest('tr').find('.span_subject');

                            if (type == 'modify') {
                                $span_subject.html('<span><img src="//img.echosting.cafe24.com/admin/btn_board_show.gif" onClick="setDispPriodView(\'' + bbs_no + '\',\'' + start_time + '\',\'' + end_time + '\');" style="cursor:pointer" alt="' + __('EXPOSURE.SETTINGS', 'B.BOARD.BULLETIN.L') + '" align="absmiddle" /></span>');
                            } else if (type == 'cancel') {
                                $span_subject.html('');
                            }
                            $('#bulletin_priod_setting').hide();
                            alert(sSuccessMsg);
                        }
                    } else {
                        alert(__('PROCESSING.FAILED', 'B.BOARD.BULLETIN.L'));
                    }
                    return;
                },
                error: function() {
                    alert(__('PROCESSING.FAILED', 'B.BOARD.BULLETIN.L'));
                }
            });
        }

        function setDispPriodView(bbs_no, start_time, end_time) {
            if (bbs_no > 0) {
                $('#disp_distance_start option[value=' + start_time + ']').attr('selected', 'selected');
                $('#disp_distance_end option[value=' + end_time + ']').attr('selected', 'selected');

                $('#bulletin_priod_setting .footer').html('<a href="#none" class="btnCtrl" onClick="setDispPriodSetting(\'modify\', \'' + bbs_no + '\')"><span>' + __('SAVE', 'B.BOARD.BULLETIN.L') + '</span></a> <a href="#none" class="btnNormal" onClick="setDispPriodSetting(\'cancel\', \'' + bbs_no + '\')"><span>' + __('UNSET', 'B.BOARD.BULLETIN.L') + '</span></a>');
            } else {
                $('#bulletin_priod_setting .footer').html('<a href="#none" class="btnCtrl" onClick="setDispPriodSetting(\'regist\')"><span>' + __('CONFIRM', 'B.BOARD.BULLETIN.L') + '</span></a> <a href="#none" class="btnNormal" onClick="$(\'#bulletin_priod_setting\').hide();"><span>' + __('CANCEL', 'B.BOARD.BULLETIN.L') + '</span></a>');
            }

            $('#bulletin_priod_setting').css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) + $(window).scrollTop()) + "px");
            $('#bulletin_priod_setting').css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) + $(window).scrollLeft()) + "px");

            //레이어 노출
            $('#bulletin_priod_setting').show();
        }

        /**
         * 게시글 노출기간 설정 유효성 체크
         */
        function chkErrorValidition(sStep) {
            var aGenerals = [];
            var aSpams = [];
            var aNotPost = [];
            var $checked_list = $("input[name='bbs_no[]']:checked");
            $checked_list.each(function() {
                var writerType = $(this).closest('tr').find('#writer_type_' + $(this).val()).val(); //일반글,비회원글 체크
                var isDeleted = $(this).closest('tr').find('#eIsDeleted_' + $(this).val()).val(); //스팸글, 미게시글

                if (isDeleted == 'S') {
                    $(this).attr('checked', false);
                    aSpams.push($(this).val());
                } else if (isDeleted == 'B') {
                    $(this).attr('checked', false);
                    aNotPost.push($(this).val());
                } else {
                    if (writerType != 'P' && writerType != 'A') {
                        $(this).attr('checked', false);
                        aGenerals.push($(this).val());
                    }
                }
            });

            if (aGenerals.length > 0 || aSpams.length > 0 || aNotPost.length > 0) {
                var msg = __('SET.POSTING.IMPRESSIONS', 'B.BOARD.BULLETIN.L');

                if (aGenerals.length > 0) msg += sprintf(__('WRITTEN.BY.NONMEMBERS', 'B.BOARD.BULLETIN.L'), aGenerals.length);
                if (aSpams.length > 0) msg += sprintf(__('NSPAM', 'B.BOARD.BULLETIN.L'), aSpams.length);
                if (aNotPost.length > 0) msg += sprintf(__('N.POST', 'B.BOARD.BULLETIN.L'), aNotPost.length);

                alert(msg);
            }

            if ($("input[name='bbs_no[]']:checked").size() < 1) {
                alert(__('POST.SET.EXPOSURE.TIME', 'B.BOARD.BULLETIN.L'));
                return false;
            }

            //게시글 노출기간 설정버튼시 초기화
            if (sStep == 'before') {
                $('#disp_distance_start option:first').attr('selected', 'selected');
                $('#disp_distance_end option:first').attr('selected', 'selected');
            }

            //레이어 노출
            setDispPriodView();
        }

        /**
         * 확대 보기
         */
        function viewFileImage(src) {
            window.open('board_admin_bulletin_image_popup.php?src=' + encodeURIComponent(src), 'image_popup', 'scrollbars=0, resizeable=0, status=0, directories=0, toolbar=0');
        }

        /**
         * 적립금 일괄 적용 레이어
         */
        function chkMileageSupplyLayer() {
            if ($("input[name='bbs_no[]']:checked").size() < 1) {
                alert(__('PLEASE.SELECT.POST.001', 'B.BOARD.BULLETIN.L'));
                return false;
            }

            $('#mileage_supply').show();
        }

        //전송여부
        var isSubmitted = false;

        /**
         * 적립금 지급
         *
         */
        function setMileage() {
            if (isSubmitted == true) {
                alert(__('PROCESSING.PLEASE.WAIT', 'B.BOARD.BULLETIN.L'));
                return false;
            }

            if ($("input[name='bbs_no[]']:checked").size() < 1) {
                alert(__('PLEASE.SELECT.MEMBER', 'B.BOARD.BULLETIN.L'));
                return false;
            }

            if ($('#sIsUse12R').val() == 'T') {
                if ($("input[name='applyBulletin']:checked").val() != 'T' && $("input[name='applyComment']:checked").val() != 'T') {
                    alert(__('ONE.APPLICATION.TARGET', 'B.BOARD.BULLETIN.L'));
                    return false;
                }
            }

            var mileage = $('#eMileageMoney').val();
            if (!mileage) {
                alert(__('ENTER.RESERVE.AMOUNT', 'B.BOARD.BULLETIN.L'));
                $('#eMileageMoney').focus();
                return false;
            }

            if ($('#isFloatingNumber').val() == 'F') {
                if (checkNumber(mileage) == true) {
                    alert(__('NOT.ENTER.DECIMAL.POINT', 'B.BOARD.BULLETIN.L'));
                    return false;
                }
            }

            var iShopNo = $('#EC_SDE_SHOP_NUM').val();
            var currency_symbol = CAFE24.SHOP_CURRENCY_INFO[iShopNo].aShopCurrencyInfo.currency_symbol;
            var sDuplicationFlag = ($('#eDuplicationFlag').is(":checked")) ? 'T' : 'F';
            var sParam = 'mileage=' + mileage + '&plusType=' + $('#ePlusType').val() + '&reason=' + $('#eReason').val() + '&sDuplicationFlag=' + sDuplicationFlag + '&' + $('#frm').serialize();
            var oCurrencySymbol = $('<textarea />').html(currency_symbol);
            var msg = sprintf(__('REFLECT.RESERVES', 'B.BOARD.BULLETIN.L'), oCurrencySymbol.text(), mileage);

            if ($('#sIsUse12R').val() == 'T') {
                msg += '\n' + __('MAY.NOT.ABLE.POSTINGS', 'B.BOARD.BULLETIN.L');
            }

            if (confirm(msg)) {
                isSubmitted = true;
                var bResetInput = true;

                $.ajax({
                    url: '/admin/php/shop1/b/board_admin_bulletin_mileage.php',
                    type: 'POST',
                    data: sParam,
                    dataType: 'json',
                    success: function(result) {
                        //적립금 차감
                        if (result['exception'] != '') {
                            alert(result['exception'].replace(/\<br\>/g, '\n'));
                        }

                        //결과
                        if (result['msg'] != '') {
                            alert(result['msg'].replace(/\<br\>/g, '\n'));
                        }

                        // 적립금 액수 초고 or 내용 항목 문자열 길이 초과
                        if (result['code'] == '2001' || (result['code'] == '0000' && !result['exception'] === false)) {
                            bResetInput = false;
                        }

                        if ($('#sIsUse12R').val() == 'T' && !result['no'] === false) {
                            $.each(result['no'], function(index, value) {
                                $('#mileage_icon_' + value).html('<img src="//img.echosting.cafe24.com/icon/ico_pay_mileage.gif" align="absmiddle" />');
                                if ($('input[name="COLUMN_mileage_date"]').attr('checked') == 'checked' && !result['updated_date'][value] === false) {
                                    $('#mileage_icon_' + value).parent('td').find('.COLUMN_mileage_date').html(result['updated_date'][value]['issue_date']);
                                }
                            });
                        }
                    },
                    error: function() {
                        alert(__('FAILURE', 'B.BOARD.BULLETIN.L'));
                        isSubmitted = false;
                    }
                }).done(function(result) {
                    isSubmitted = false;

                    // 적립금 성공 시 팝업레이어와 체크박스 초기화
                    if (bResetInput === true) {
                        if (SHOP.isMobileAdmin() === true) {
                            $('#mileage_supply').find('.btn-close').trigger('click');
                            $('button[name="ePlusType"][data-value="1"]').trigger('click');
                        } else {
                            $('#mileage_supply').hide();
                            $('select[name="ePlusType"]').find('option:first').attr('selected', 'selected');
                        }
                        $("input[name='bbs_no[]']:checked").trigger('click');
                        $(".allChk").attr('checked', false);
                        $('input[name="applyBulletin"]').attr('checked', true);
                        $('input[name="applyComment"]').attr('checked', false);
                        $('input[name="mileage_money"]').attr('value', '');
                        $('input[name="reason"]').attr('value', '');
                        $('input[name="duplicationFlag"]').attr('checked', false);
                    }

                    // 실패 건과 성공 건이 함께 있을 때에는 성공 건만 체크 해제
                    $("input[name='bbs_no[]']").each(function() {
                        if (result['no'] != null && result['no'].indexOf($(this).val()) > -1) {
                            $(this).attr('checked', false);
                        }
                    });
                });
            }
        }

        /**
         * 소수점 체크
         */
        function checkNumber(str) {
            if (str.indexOf('.') > 0) {
                return true;
            } else {
                return false;
            }
        }

        function check_all(obj_name, obj_toggle) {
            var obj_list = document.getElementsByName(obj_name);
            if (!obj_list) return;
            for (var cnt = 0, len = obj_list.length; cnt < len; cnt++) {
                obj_list[cnt].checked = obj_toggle.checked;
            }
        }

        function OpenWindow(StrPage, StrName, w, h, scrolls) {
            var win = null;
            var winl = (screen.width - w) / 2;
            var wint = (screen.height - h) / 3;
            settings = 'height=' + h + ',';
            settings += 'width=' + w + ',';
            settings += 'top=' + wint + ',';
            settings += 'left=' + winl + ',';
            settings += 'scrollbars=' + scrolls + ',';
            settings += 'resizable=no,';
            settings += 'status=no';
            win = window.open(StrPage, StrName, settings);
            if (parseInt(navigator.appVersion) >= 4) {
                win.window.focus();
            }
        }

        function is_checkbox_checked(message) {
            var is_checked = false;
            //bbs_no object에 대한 예외처리 - yiseok. 2011-01-24
            if ($("input[name='bbs_no[]']:checked").size() > 0) {
                is_checked = true;
            }

            if (is_checked == false) {
                alert(message);
                return false;
            } else {
                return true
            }

        }

        function delete_choice(mode, message, sAdminType) {
            var test = false;

            if (is_checkbox_checked(message) == false) {
                return;
            }

            if (sAdminType == 'A') {
                if (!confirm(__('RIGHTS.DELETED.NDO', 'B.BOARD.BULLETIN.L'))) {
                    return;
                }
            }

            document.frm.mode.value = mode;
            document.frm.target = '_self';

            document.frm.action = "/admin/php/shop1/b/board_admin_bulletin_a.php";
            document.frm.submit()
        }

        function getFrontLocationMultiShopUrl(sUrl) {
            var matches = window.location.pathname.match(/^\/admin\/php\/shop([0-9]+)/);
            if (matches) {
                sUrl = 'http://shop' + matches[1] + '.' + window.location.hostname + sUrl;
            }

            return sUrl;
        }

        function open_board1(board_no, board_group) {

            if (board_group == "7") {
                url = getFrontLocationMultiShopUrl("/front/php/myshop/cons_board_list.php?board_no=" + board_no);
            } else {
                url = getFrontLocationMultiShopUrl("/front/php/b/board_list.php?board_no=" + board_no);
            }

            url += "&is_pcver=T";

            option = 'tollbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1000, height=740, top=100, left=100';

            opener = window.open(url, 'bulletin_del_f_pop', option);
        }


        function open_detail_view(board_no, no, board_group) {
            // front페이지에서 spam 게피물의 내용보기 위해서 쿠키 생성
            // setSpamViewCookie('cafe24_ecspam_view',no,365);

            if (board_group == "7") {
                url = getFrontLocationMultiShopUrl("/front/php/myshop/cons_board_read_new.php?board_no=" + board_no + "&no=" + no);
            } else {
                url = getFrontLocationMultiShopUrl("/front/php/b/board_read.php?board_no=" + board_no + "&no=" + no);
            }

            url += "&is_pcver=T";

            //ECHOSTING-81077 resizable=yes
            option = 'tollbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=' + screen.width + ', height=' + screen.height + ', fullscreen=yes';
            opener = window.open(url, '', option);

            var agt = navigator.userAgent.toLowerCase();
            if (agt.indexOf("chrome") != -1) {
                opener.resizeTo(screen.availWidth, screen.availHeight);
            }
            //    opener = window.open( url, 'bulletin_del_f_pop', option );
        }

        function open_reply(sde_reply_url) {
            url = getFrontLocationMultiShopUrl(sde_reply_url);

            url += "&is_pcver=T";

            //ECHOSTING-81077 resizable=yes
            option = 'tollbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=' + screen.width + ', height=' + screen.height + ', fullscreen=yes';
            winObj = window.open(url, '', option);

            var agt = navigator.userAgent.toLowerCase();
            if (agt.indexOf("chrome") != -1) {
                winObj.resizeTo(screen.availWidth, screen.availHeight);
            }
        }

        function view_board(sType) {

            //검색 제외
            if ($('#sNewboardAnd12rFlag').val() == 'T' && sType != 'submit') return;

            if (SHOP.isMobileAdmin() === false) {
                var sSearchType = $('#search').val();
                var sSearchSort = $('#eSearchSort').val();
                var sListLimit = $('#list_limit').val();
            } else {
                $('#no_member_article').val($('#no_member_article').is(':checked') === true ? 'T' : 'F');
                // (ios) 값이 없을 경우 null 이 들어가는 케이스 처리
                var iBoardNo = $('#sel_board_no').val() === null ? '' : $('#sel_board_no').val();
                $('#sel_board_no').val(iBoardNo);
                // (ios) 값이 없을 경우 null 이 들어가는 케이스 처리
                var sCategory = $('#board_category').val() === null ? '' : $('#board_category').val();
                $('#board_category').val(sCategory);
                var sSearchType = $('#ecmobile-bulletin-search-select').val();
                var sSearchSort = $('input[name="searchSort"]:checked').val();
                var sListLimit = $('input[name="list_limit"]:checked').val();
                MOBILE_ADMIN_UI.showPageLoading();
            }

            var aParams = {
                start_date: $('input[name="start_date"]').val(), //작성일 앞
                end_date: $('input[name="end_date"]').val(), //작성일 뒤
                period: $('input[name="period"]').val(), // 기간
                sel_board_no: $('#sel_board_no').val(), // 게시판 선택
                sel_spam_view: $('#sel_spam_view').val(), // 스팸관리
                search_channel: $('#eSearchChannel').val(), // 쇼핑몰 구분
                list_limit: sListLimit, // 게시물 목록
                search: sSearchType, // 검색 조건
                search_key: $('#search_key').val(), // 검색 키
                is_reply: $('input[name=is_reply]:checked').val(), // 답변여부
                is_comment: $('input[name=is_comment]:checked').val(), // 댓글여부
                real_filename: $('input[name=real_filename]:checked').val(), // 첨부파일 여부
                mem_type: $('input[name=mem_type]:checked').val(), // 글보기 설정
                report_status: $('input[name=report_status]:checked').val(), // 신고 상태
                board_category: $('#board_category').val(), // 카테고리
                no_member_article: $('#no_member_article').val(), // 카테고리
                navi_hide: $('#navi_hide').val() // 메뉴숨김 여부
            };
            var sQueryString = $.param(aParams);

            location.href = './board_admin_bulletin_l.php?' + sQueryString + '&searchSort=' + sSearchSort;
        }

        function SpamMoveInit(mode, message) {
            var f = document.frm;
            if (is_checkbox_checked(message) == false) {
                return;
            }

            $('[name="mode"]').val(mode);
            if (mode == 'move') {
                OpenWindow("about:blank", 'spamRegist', '450', '350', 'no');
                f.target = 'spamRegist';
                f.action = 'board_spam_regist.php';
            } else {
                OpenWindow("about:blank", 'spamRestore', '470', '350', 'yes');
                f.target = 'spamRestore';
                f.action = 'board_spam_restore.php';
            }

            f.submit();
        }

        function setSpamMode(mode) {
            document.frm.mode.value = mode;
        }

        function setSpamViewCookie(name, value, expiredays) {
            if (name) {
                var todayDate = new Date();
                todayDate.setDate(todayDate.getDate() + expiredays);
                todayDate.setHours(0);
                todayDate.setMinutes(0);
                todayDate.setSeconds(0);
                document.cookie = name + '=' + escape(value) + '; path=/; expires=' + todayDate.toGMTString() + ';'
                return;
            }
        }

        function open_member_info(member_id) {
            if (member_id) {
                url = '/admin/php/shop1/c/member_admin_d_f.php?user_id=' + member_id;
                option = 'toolbar=no location=no scrollbars=yes resizable=yes width=680 height=780';
                opener = window.open(url, 'ECHOST_MEBER_DETAIL', option);
            } else {
                alert(__('NOT.MEMBER', 'B.BOARD.BULLETIN.L'));
            }
        }

        /**
         * 주문상세팝업 열기
         */
        function order_detail(order_id) {
            url = '/admin/php/shop1/s/order_detail.php?order_id=' + order_id;
            if (SHOP.isMobileAdmin() === false) {
                winname = 'order_detail';
                option = 'toolbar=no location=no scrollbars=yes resizable=yes width=1280 height=800';
                window.open(url, winname, option);
            } else {
                MOBILE_ADMIN_UI.openCommonIframeLayer(url);
            }
        }

        /**
         * 메일, sms, 쪽지 팝업
         */
        function msm_popup(mode, receive_mode, member_id) {
            msg = '';

            switch (mode) {
                case 'mail':
                    switch (receive_mode) {
                        case 'T':
                            break;

                        case 'D':
                            msg = sprintf(__('RECEIVE.NEWS.MESSAGES', 'B.BOARD.BULLETIN.L'), member_id);
                            msg += __('YOU.STILL.WANT.MAIL', 'B.BOARD.BULLETIN.L');
                            break;

                        case 'F':
                        default:
                            msg = sprintf(__('RECEIVING.NEWS.MESSAGES', 'B.BOARD.BULLETIN.L'), member_id);
                            msg += __('YOU.STILL.WANT.MAIL', 'B.BOARD.BULLETIN.L');
                    }

                    if (msg) {
                        if (confirm(msg)) {
                            member_mail_pop(member_id);
                        }
                    } else {
                        member_mail_pop(member_id);
                    }
                    break;

                case 'sms':
                    if (receive_mode == 'T') {
                        member_sms_pop(member_id);
                    } else {
                        msg = sprintf(__('AN.UNSOLICITED.MEMBER.SMS', 'B.BOARD.BULLETIN.L'), member_id);
                        msg += __('YOU.STILL.WANT.SMS', 'B.BOARD.BULLETIN.L');

                        if (confirm(msg)) {
                            member_sms_pop(member_id);
                        }
                    }
                    break;
            }
        }

        function show_memo_view(img_obj, member_id) {
            // ECHOSTING-330543 : 메모표시 위치 변경
            var width = 300;
            var left = event.pageX - width - $(img_obj).width();

            // 스마트모드일경우
            if (SHOP.isMode() === true) {

                if ($('#header').find('.alert').length > 0) {
                    var pageY = event.pageY - ($('#header').height() - 30);
                } else {
                    var pageY = event.pageY - ($('#header').height() + 30);
                }

                left = left - $('#sidebar').width();

            } else {
                var pageY = event.pageY - 10;
            }

            if ($(img_obj).hasClass("selected")) {
                if ($('#memo_view_' + member_id).length > 0) {

                    // ECHOSTING-330543 : 메모표시 위치 변경
                    $('#memo_view_' + member_id).css('width', width);
                    $('#memo_view_' + member_id).css('left', left);
                    $('#memo_view_' + member_id).css('top', pageY);
                    $('#memo_view_' + member_id).css('visibility', 'visible');
                }
            }
        }

        function setCalendar() {
            var iEndYear = new Date().getFullYear();
            if (typeof CAFE24.GLOBAL_DATETIME === 'object' && CAFE24.GLOBAL_DATETIME.isLoaded() === true) {
                var sYear = CAFE24.GLOBAL_DATETIME.parse('', 'shop').format(CAFE24.GLOBAL_DATETIME.const.YEAR_ONLY);
                if (isNaN(sYear) === false) {
                    iEndYear = parseInt(sYear);
                }
            }

            $('#eStartCalendar').Calendar({
                'target': '#startDate',
                'years_between': [2001, iEndYear],
                'pop_calendar': 'mCalendar'
            });

            $('#eEndCalendar').Calendar({
                'target': '#endDate',
                'years_between': [2001, iEndYear],
                'pop_calendar': 'mCalendar'
            });
        }

        var ECMOBILE_BULLENTIN_MANAGER = {
            init: function() {
                $('.ecmobile-bulletin-writer').click(function() {
                    var url = '/admin/php/shop1/c/member_admin_d_f.php?user_id=' + $(this).data('memberid');
                    MOBILE_ADMIN_UI.openCommonIframeLayer(url, true, true);
                });

                $('.ecmobile-bulletin-preview').click(function() {
                    var sUrl = getMultiShopUrl('/admin/php/shop1/b/board_admin_bulletin_preview.php');
                    var oLinkTag = $(this);
                    sUrl += '?board_no=' + oLinkTag.data('board-no');
                    sUrl += '&no=' + oLinkTag.data('no');
                    sUrl += '&board_group=' + oLinkTag.data('board-group');
                    sUrl += '&disp_reply_btn=' + oLinkTag.data('save-btn');
                    MOBILE_ADMIN_UI.openCommonIframeLayer(sUrl);
                });

                $('.ecmobile-bulletin-file-preview').click(function() {
                    $('#ecmobile-bulletin-file-preview-area').attr('src', $(this).attr('imgsrc'));
                });

                $('#ecmobile-bulletin-mome-save').click(function() {
                    ecmobile_member_memo_save();
                });
            }
        }
    </script>
    <!-- Google Tag Manager -->
    <script>
        (function(w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NBS7Z7L');
    </script>
    <!-- End Google Tag Manager -->
    <script type="text/javascript">
        typeof window.CAFE24 === "undefined" && (window.CAFE24 = {
            MANIFEST_CACHE_REVISION: '2206021105',
            getDeprecatedNamespace: function(sDeprecatedNamespace, sSupersededNamespace) {
                var sNamespace = sSupersededNamespace ?
                    sSupersededNamespace :
                    sDeprecatedNamespace.replace(/^EC_/, '');

                return CAFE24[sNamespace];
            }
        });
        CAFE24.SDE_SHOP_NUM = 1;
        CAFE24.SHOP = {
            getLanguage: function() {
                return "ko_KR";
            },
            getCurrency: function() {
                return "KRW";
            },
            getFlagCode: function() {
                return "KR";
            },
            getTimezone: function() {
                return "Asia/Seoul"
            },
            getDateFormat: function() {
                return "Y-m-d"
            },
            isMultiShop: function() {
                return false;
            },
            isDefaultShop: function() {
                return true;
            },
            isDefaultLanguageShop: function(sLanguageCode) {
                return this.isDefaultShop() && this.isLanguageShop(sLanguageCode);
            },
            isKR: function() {
                return true;
            },
            isUS: function() {
                return false;
            },
            isJP: function() {
                return false;
            },
            isCN: function() {
                return false;
            },
            isTW: function() {
                return false;
            },
            isES: function() {
                return false;
            },
            isPT: function() {
                return false;
            },
            isVN: function() {
                return false;
            },
            isPH: function() {
                return false;
            },
            getCountryAndLangMap: function() {
                return {
                    "KR": "ko_KR",
                    "US": "en_US",
                    "JP": "ja_JP",
                    "CN": "zh_CN",
                    "TW": "zh_TW",
                    "VN": "vi_VN",
                    "PH": "en_PH"
                }
            },
            isLanguageShop: function(sLanguageCode) {
                return sLanguageCode === "ko_KR";
            },
            getDefaultShopNo: function() {
                return 1;
            },
            getProductVer: function() {
                return 2;
            },
            isMode: function() {
                return true;
            },
            getModeName: function() {
                return true;
            },
            isMobileAdmin: function() {
                return false;
            },
            isExperienceMall: function() {
                return false;
            },
            getAdminID: function() {
                return 'ydh312'
            },
            getMallID: function() {
                return 'ydh312'
            },
            getCurrencyFormat: function(sPriceTxt, bIsNumberFormat) {
                sPriceTxt = String(sPriceTxt);

                var aCurrencySymbol = ["", "\uc6d0", false];

                if (typeof CAFE24.SHOP_PRICE !== 'undefined' && isNaN(sPriceTxt.replace(/[,]/gi, '')) === false && bIsNumberFormat === true) {
                    // bIsNumberFormat 사용하려면 assign('currency_library_script', get_currency_library_script()) 화폐 라이브러리 추가 필요
                    sPriceTxt = CAFE24.SHOP_PRICE.toShopPrice(sPriceTxt.replace(/[,]/gi, ''), true, CAFE24.SDE_SHOP_NUM);
                }

                try {
                    var sPlusMinusSign = (sPriceTxt.toString()).substr(0, 1);
                    if (sPlusMinusSign === '-' || sPlusMinusSign === '+') {
                        sPriceTxt = (sPriceTxt.toString()).substr(1);
                        return sPlusMinusSign + aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
                    } else {
                        return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
                    }
                } catch (e) {
                    return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
                }
            }
        };

        function getMultiShopUrl(sUrl) {
            if (SHOP.isMultiShop() === false) {
                return sUrl;
            } else if (/^\/((?:disp|exec)\/admin|admin\/php)(\/shop\d+)\//.test(sUrl) === true) {
                return sUrl;
            } else {
                return sUrl.replace(/\/((?:disp|exec)\/admin|admin\/php)(\/shop\d+)?\//, "/$1/shop" + EC_SDE_SHOP_NUM + "/");
            }
        }
        CAFE24.COMMON_UTIL = {
            convertSslForString: function(sString) {
                return sString.replace(/http:/gi, '');
            },
            convertSslForHtml: function(sHtml) {
                return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');
            },
            getProtocol: function() {
                return 'https';
            },
            moveSsl: function() {
                if (CAFE24.COMMON_UTIL.getProtocol() === 'http') {
                    var oLocation = jQuery(window.location);
                    var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search');
                    window.location.replace(sUrl);
                }
            },
            setEcCookie: function(sKey, sValue, iExpire) {
                var exdate = new Date();
                exdate.setDate(exdate.getDate() + iExpire);
                var setValue = escape(sValue) + "; domain=." + CAFE24.GLOBAL_INFO.getBaseDomain() + "; path=/;expires=" + exdate.toUTCString();
                document.cookie = sKey + "=" + setValue;
            }
        };
        var EC_SDE_SHOP_NUM = CAFE24.SDE_SHOP_NUM;
        var SHOP = CAFE24.getDeprecatedNamespace('SHOP');
        var EC_COMMON_UTIL = CAFE24.getDeprecatedNamespace('EC_COMMON_UTIL');
        if (typeof SHOP !== 'undefined' && SHOP.isMobileAdmin() === false) {
            window.addEventListener('beforeunload', function(e) {
                if ((typeof INFLUENCER_MENU_NAVIGATION_GNB !== 'undefined' && INFLUENCER_MENU_NAVIGATION_GNB.bIsChaneMode === true) || (typeof parent.INFLUENCER_MENU_NAVIGATION_GNB !== 'undefined' && parent.INFLUENCER_MENU_NAVIGATION_GNB.bIsChaneMode === true)) {} else {
                    CAFE24.COMMON_UTIL.setEcCookie('is_mode', SHOP.getModeName(), 30);
                }
            });
            window.open = function(open) {
                return function(url, name, features) {
                    CAFE24.COMMON_UTIL.setEcCookie('is_mode', SHOP.getModeName(), 30);
                    name = name || '';
                    features = (typeof features === 'undefined') ? '' : features;
                    return open.call(window, url, name, features);
                };
            }(window.open);
        }
    </script>
    <script type="text/javascript">
        CAFE24.ROOT_DOMAIN = "cafe24.com";
        CAFE24.API_DOMAIN = "cafe24api.com";
        CAFE24.TRANSLATE_LOG_STATUS = "F";
        CAFE24.GLOBAL_INFO = (function() {
            var oData = {
                "base_domain": "ydh312.cafe24.com",
                "root_domain": "cafe24.com",
                "api_domain": "cafe24api.com",
                "is_global": false,
                "is_global_standard": false,
                "country_code": "KR",
                "language_code": "ko_KR",
                "admin_language_code": "ko_KR"
            };
            return {
                getBaseDomain: function() {
                    return oData['base_domain'];
                },

                getRootDomain: function() {
                    return oData['root_domain'];
                },

                getApiDomain: function() {
                    return oData['api_domain'];
                },

                isGlobal: function() {
                    return oData['is_global'];
                },

                isGlobalStandard: function() {
                    return oData['is_global_standard'];
                },

                getCountryCode: function() {
                    return oData['country_code'];
                },

                getLanguageCode: function() {
                    return oData['language_code'];
                },

                getAdminLanguageCode: function() {
                    return oData['admin_language_code'];
                }
            };
        })();

        var EC_ROOT_DOMAIN = CAFE24.ROOT_DOMAIN;
        var EC_API_DOMAIN = CAFE24.API_DOMAIN;
        var EC_TRANSLATE_LOG_STATUS = CAFE24.TRANSLATE_LOG_STATUS;
        var EC_GLOBAL_INFO = CAFE24.getDeprecatedNamespace('EC_GLOBAL_INFO');
    </script>
    <script type="text/javascript">
        CAFE24.GLOBAL_DATETIME = (function() {
            var oConstants = {
                "STANDARD_DATE_REGEX": "\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/",
                "IN_ZONE": "inZone",
                "OUT_ZONE": "outZone",
                "IN_FORMAT": "inFormat",
                "OUT_FORMAT": "outFormat",
                "IN_DATE_FORMAT": "inDateFormat",
                "IN_TIME_FORMAT": "inTimeFormat",
                "OUT_DATE_FORMAT": "outDateFormat",
                "OUT_TIME_FORMAT": "outTimeFormat",
                "IN_FORMAT_DATE_ONLY": 1,
                "IN_FORMAT_TIME_ONLY": 2,
                "IN_FORMAT_ALL": 3,
                "OUT_FORMAT_DATE_ONLY": 1,
                "OUT_FORMAT_TIME_ONLY": 2,
                "OUT_FORMAT_ALL": 3,
                "DATE_ONLY": "YYYY-MM-DD",
                "TIME_ONLY": "HH:mm:ss",
                "FULL_TIME": "YYYY-MM-DD HH:mm:ss",
                "ISO_8601": "YYYY-MM-DD[T]HH:mm:ssZ",
                "YEAR_ONLY": "YYYY",
                "MONTH_ONLY": "MM",
                "DAY_ONLY": "DD",
                "WEEK_ONLY": "e",
                "TIME_H_I_ONLY": "HH:mm",
                "TIME_HOUR_ONLY": "HH",
                "TIME_MINUTE_ONLY": "mm",
                "POSTGRE_FULL_TIME": "YYYY-MM-DD HH24:MI:SS",
                "POSTGRE_TIME_ONLY": " HH24:MI:SS",
                "MICRO_SECOND_ONLY": "u",
                "SEOUL": "Asia\/Seoul",
                "TOKYO": "Asia\/Tokyo",
                "SHANGHAI": "Asia\/Shanghai",
                "TAIPEI": "Asia\/Taipei",
                "HANOI": "Asia\/Bangkok",
                "LOS_ANGELES": "America\/Los_Angeles",
                "LISBON": "Europe\/Lisbon",
                "MADRID": "Europe\/Madrid",
                "SINGAPORE": "Asia\/Singapore",
                "UTC": "Etc\/UTC",
                "MAX_DATETIME": "9999-12-31 23:59:59"
            };
            var oOptions = {
                "inZone": "Asia\/Seoul",
                "inFormat": "YYYY-MM-DD HH:mm:ss",
                "inDateFormat": "YYYY-MM-DD",
                "inTimeFormat": "HH:mm:ss",
                "outZone": "Asia\/Seoul",
                "outFormat": "YYYY-MM-DD HH:mm:ss",
                "outDateFormat": "YYYY-MM-DD",
                "outTimeFormat": "HH:mm:ss"
            };
            var oPolicies = {
                "shop": {
                    "outZone": "Asia\/Seoul",
                    "outFormat": "YYYY-MM-DD HH:mm:ss",
                    "outDateFormat": "YYYY-MM-DD",
                    "outTimeFormat": "HH:mm:ss"
                }
            };
            var sOverrideTimezone = '';
            var sMomentNamespace = 'EC_GLOBAL_MOMENT';

            var fMomentLoaded = function() {
                var bMomentLoaded = !!window[sMomentNamespace];
                var bMomentTZLoaded = false;
                if (bMomentLoaded) {
                    bMomentTZLoaded = !!window[sMomentNamespace].tz;
                }

                return bMomentLoaded && bMomentTZLoaded;
            };

            var fMomentWrapper = function() {
                return window[sMomentNamespace];
            };

            var fShallowMerge = function(oTarget, oSource) {
                oSource = oSource || {};
                for (var sKey in oSource) {
                    if (oSource.hasOwnProperty(sKey)) {
                        oTarget[sKey] = oSource[sKey];
                    }
                }

                return oTarget;
            };

            var getFormatFromFlag = function(oOptions, iFlag, bOpposite) {
                if (bOpposite) {
                    switch (iFlag) {
                        case 1:
                            return oOptions[oConstants.IN_DATE_FORMAT];
                        case 2:
                            return oOptions[oConstants.IN_TIME_FORMAT];
                        default:
                            return oOptions[oConstants.IN_FORMAT];
                    }
                }

                switch (iFlag) {
                    case 1:
                        return oOptions[oConstants.OUT_DATE_FORMAT];
                    case 2:
                        return oOptions[oConstants.OUT_TIME_FORMAT];
                    default:
                        return oOptions[oConstants.OUT_FORMAT];
                }
            };

            return {
                'const': oConstants,

                init: function(fCallback) {
                    if (fMomentLoaded()) {
                        if (typeof fCallback === 'function') {
                            fCallback();
                        }

                        return;
                    }

                    var oScript = document.createElement('script');
                    oScript.type = 'text/javascript';
                    oScript.async = true;
                    oScript.src = '/ind-script/moment.php?convert=T';
                    oScript.onload = oScript.onreadystatechange = function() {
                        fMomentWrapper().defaultFormat = oOptions[oConstants.OUT_FORMAT];
                        fMomentWrapper().tz.setDefault(oOptions[oConstants.IN_ZONE]);

                        if (typeof fCallback === 'function') {
                            fCallback();
                        }
                    };

                    var oFirstScript = document.getElementsByTagName('script')[0];
                    oFirstScript.parentNode.insertBefore(oScript, oFirstScript);
                },

                initPromise: function() {
                    if (!window.Promise) {
                        return;
                    }

                    return new Promise(function(resolve) {
                        this.init(resolve);
                    }.bind(this));
                },

                isLoaded: function() {
                    return fMomentLoaded();
                },

                setOptions: function(oNewOptions) {
                    if (typeof oNewOptions === 'object') {
                        for (var sKey in oNewOptions) {
                            if (oNewOptions.hasOwnProperty(sKey) && oOptions.hasOwnProperty(sKey)) {
                                oOptions[sKey] = oNewOptions[sKey];
                            }
                        }
                    }

                    return this;
                },

                now: function(mOptions, iFlag) {
                    if (fMomentLoaded() === false) {
                        return Math.floor(new Date().getTime() / 1000);
                    }

                    var oFormatOptions = this.getOptions(mOptions);
                    return fMomentWrapper()()
                        .tz(oFormatOptions.outZone)
                        .format(getFormatFromFlag(oFormatOptions, iFlag));
                },

                format: function(sTime, mOptions, iFlag) {
                    if (fMomentLoaded() === false) {
                        return sTime;
                    }

                    var oFormatOptions = this.getOptions(mOptions);
                    return fMomentWrapper()
                        .tz(sTime, oFormatOptions.inZone)
                        .tz(oFormatOptions.outZone)
                        .format(getFormatFromFlag(oFormatOptions, iFlag));
                },

                parse: function(sTime, mOptions) {
                    if (fMomentLoaded() === false) {
                        return sTime;
                    }

                    var oParseOptions = this.getOptions(mOptions);
                    return fMomentWrapper().tz((sTime || new Date()), oParseOptions.inZone).tz(oParseOptions.outZone);
                },

                getOptions: function(mOptions, iFlag) {
                    mOptions = mOptions || {};

                    var oMergedOptions = fShallowMerge({}, oOptions);
                    if (typeof mOptions === 'string' && oPolicies[mOptions]) {
                        oMergedOptions = fShallowMerge(oMergedOptions, oPolicies[mOptions]);
                    } else if (typeof mOptions === 'object') {
                        oMergedOptions = fShallowMerge(oMergedOptions, mOptions);
                    }

                    if (sOverrideTimezone) {
                        if ((typeof mOptions === 'string' && mOptions === 'shop') || (typeof mOptions === 'object' && !mOptions[oConstants.OUT_ZONE])) {
                            oMergedOptions[oConstants.OUT_ZONE] = sOverrideTimezone;
                        }
                    }

                    return oMergedOptions;
                },

                getRevertOptions: function(mOptions) {
                    var oCurrentOptions = this.getOptions(mOptions);
                    var oMergedOptions = fShallowMerge({}, oOptions);
                    oMergedOptions[oConstants.IN_ZONE] = oCurrentOptions[oConstants.OUT_ZONE];
                    oMergedOptions[oConstants.IN_FORMAT] = oCurrentOptions[oConstants.OUT_FORMAT];
                    oMergedOptions[oConstants.IN_DATE_FORMAT] = oCurrentOptions[oConstants.OUT_DATE_FORMAT];
                    oMergedOptions[oConstants.IN_TIME_FORMAT] = oCurrentOptions[oConstants.OUT_TIME_FORMAT];

                    return oMergedOptions;
                },

                today: function(sTime, mOptions, iFlag) {
                    if (fMomentLoaded() === false) {
                        throw new Error('MomentJS didnt initialize');
                    }

                    mOptions = mOptions || 'shop';
                    var oRevertOptions = this.getRevertOptions(mOptions);
                    var oToday;
                    if (!sTime || sTime === 'now') {
                        oToday = this.parse('', mOptions);
                    } else {
                        iFlag = iFlag || oConstants.IN_FORMAT_ALL || 3;
                        oToday = fMomentWrapper().tz(sTime, getFormatFromFlag(oRevertOptions, iFlag, true), oRevertOptions[oConstants.IN_ZONE]);
                        if (oToday.isValid() === false) {
                            var oStandardDateRegex = new RegExp(oConstants.STANDARD_DATE_REGEX.replace(/\//g, ''));
                            if (oStandardDateRegex.test(sTime) === true) {
                                oToday = fMomentWrapper().tz(sTime, oRevertOptions[oConstants.IN_ZONE]);
                            } else {
                                oToday = fMomentWrapper()();
                            }
                        }
                    }

                    var oStartOfDay = oToday.clone().startOf('day');
                    var oEndOfDay = oToday.clone().endOf('day');

                    var sStartOfDayInSeoul = oStartOfDay.tz(oConstants.SEOUL).format(oConstants.FULL_TIME);
                    var sEndOfDayInSeoul = oEndOfDay.tz(oConstants.SEOUL).format(oConstants.FULL_TIME);

                    return [sStartOfDayInSeoul, sEndOfDayInSeoul];
                },

                parseFromFormat: function(sTime, mOptions, iFlag) {
                    if (fMomentLoaded() === false) {
                        return sTime;
                    }

                    mOptions = mOptions || 'shop';
                    iFlag = iFlag || oConstants.IN_FORMAT_ALL || 3;

                    var oRevertOptions = {};
                    if (typeof mOptions === 'string') {
                        oRevertOptions = this.getRevertOptions(mOptions);
                    } else {
                        oRevertOptions = this.getOptions(mOptions);
                    }

                    return fMomentWrapper()(sTime, getFormatFromFlag(oRevertOptions, iFlag, true));
                }
            };
        })();

        var EC_GLOBAL_DATETIME = CAFE24.getDeprecatedNamespace('EC_GLOBAL_DATETIME');
    </script>
    <script type="text/javascript">
        CAFE24.AVAILABLE_LANGUAGE = ["ko_KR", "zh_CN", "en_US", "zh_TW", "es_ES", "pt_PT", "vi_VN", "ja_JP", "en_PH"];
        CAFE24.AVAILABLE_LANGUAGE_CODES = {
            "ko_KR": "KOR",
            "zh_CN": "CHN",
            "en_US": "ENG",
            "zh_TW": "TWN",
            "es_ES": "ESP",
            "pt_PT": "PRT",
            "vi_VN": "VNM",
            "ja_JP": "JPN",
            "en_PH": "PHL"
        };
        var EC_AVAILABLE_LANGUAGE = CAFE24.AVAILABLE_LANGUAGE;
        var EC_AVAILABLE_LANGUAGE_CODES = CAFE24.AVAILABLE_LANGUAGE_CODES;

        CAFE24.GLOBAL_PRODUCT_LANGUAGE_CODES = {
            sClearanceCategoryCode: '',
            sManualLink: '//serviceguide.cafe24shop.com/ko_KR/PR.PD.GA.html',
            sHsCodePopupLink: 'https://www.wcotradetools.org/en/harmonized-system',
            aCustomRegex: '"PHL" : "^[0-9]{8}[A-Z]?$"',
            sCountryCodeData: 'kor',
            sEnglishExampleURlForGlobal: '',
            aReverseAddressCountryCode: ["VNM", "PHL"],
            aSizeGuideCountryAlign: '["US","UK","EU","KR","JP","CN"]',
            aIsSupportTran: ["ja_JP", "zh_CN", "zh_TW", "en_US", "vi_VN", "en_PH", "pt_PT", "es_ES"]
        };
        var EC_GLOBAL_PRODUCT_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_PRODUCT_LANGUAGE_CODES');

        CAFE24.GLOBAL_ORDER_LANGUAGE_CODES = {
            aModifyOrderLanguage: {
                "KR": "ko_KR",
                "JP": "ja_JP",
                "CN": "zh_CN",
                "TW": "zh_TW",
                "VN": "vi_VN",
                "PH": "en_PH"
            },
            aUseIdCardKeyCountry: ["CN", "TW"],
            aLanguageWithCountryCode: {
                "zh_CN": ["CN", "CHN", "HK", "HNK"],
                "ja_JP": ["JP", "JPN"],
                "zh_TW": ["TW", "TWN"],
                "ko_KR": ["KR", "KOR"],
                "vi_VN": ["VN", "VNM"],
                "en_PH": ["PH", "PHL"]
            },
            aCheckDisplayRequiredIcon: ["ja_JP", "zh_CN", "zh_TW", "en_US", "vi_VN", "en_PH"],
            aSetReceiverName: {
                "zh_CN": {
                    "sCountry": "CN",
                    "bUseLastName": true
                },
                "zh_TW": {
                    "sCountry": "TW",
                    "bUseLastName": false
                },
                "ja_JP": {
                    "sCountry": "JP",
                    "bUseLastName": true
                }
            },
            aSetDeferPaymethodLanguage: {
                "ja_JP": "\uc77c\ubcf8",
                "zh_CN": "\uc911\uad6d"
            },
            aUseDeferPaymethod: ["ja_JP", "zh_CN"],
            aCheckShippingCompanyAndPaymethod: ["ja_JP", "zh_CN"],
            aSetDeferPaymethodLanguageForShipping: {
                "ja_JP": "\u65e5\u672c",
                "zh_CN": "\uc911\uad6d"
            },
            aCheckStoreByPaymethod: ["ja_JP", "zh_CN"],
            aCheckIsEmailRequiredForJs: ["en_US", "zh_CN", "zh_TW", "ja_JP", "vi_VN", "en_PH"],
            aSetIdCardKeyCountryLanguage: {
                "CN": "\uc911\uad6d\uc758",
                "TW": "\ub300\ub9cc\uc758"
            },
            aReverseGlobalAddress: ["en_PH", "vi_VN", "PHL", "VNM", "VN", "PH"],
            aNoCheckZipCode: ["KOR", "JPN"],
            aNotPostCodeAPICountryList: ["en_US", "es_ES", "pt_PT", "en_PH"],
            aEnableSearchExchangeAddr: ["KR", "JP", "CN", "VN", "TW", "PH"],
            aDuplicatedBaseAddr: ["TW", "JP"],
            aReverseAddressCountryCode: ["VN", "PH"],
            aCheckZipCode: ["PHL", "en_PH", "PH"]
        };
        var EC_GLOBAL_ORDER_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_ORDER_LANGUAGE_CODES');

        CAFE24.GLOBAL_MEMBER_LANGUAGE_CODES = {
            sAdminWebEditorLanguageCode: 'ko',
            oNotAvailDecimalPointLanguages: ["ko_KR", "ja_JP", "zh_TW", "vi_VN"],
            oAddressCountryCode: {
                "KOR": "ko_KR",
                "JPN": "ja_JP",
                "CHN": "zh_CN",
                "TWN": "zh_TW",
                "VNM": "vi_VN",
                "PHL": "en_PH"
            },
        };
        var EC_GLOBAL_MEMBER_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_MEMBER_LANGUAGE_CODES');


        CAFE24.GLOBAL_BOARD_LANGUAGE_CODES = {
            bUseLegacyBoard: true
        };
        var EC_GLOBAL_BOARD_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_BOARD_LANGUAGE_CODES');

        CAFE24.GLOBAL_MALL_LANGUAGE_CODES = {
            oDesign: {
                oDesignAddReplaceInfo: {
                    "group_id": "SKIN.ADD.ADMIN.DESIGNDETAIL",
                    "replacement": {
                        "KR": "KOREAN",
                        "US": "ENGLISH",
                        "JP": "JAPANESE",
                        "CN": "SIMPLIFIED.CHINESE",
                        "TW": "TRADITIONAL.CHINESE",
                        "ES": "SPANISH",
                        "PT": "PORTUGUESE",
                        "PH": "ENGLISH"
                    }
                },
                oDesignDetailLanguageCountryMap: {
                    "KR": "ko_KR",
                    "JP": "ja_JP",
                    "CN": "zh_CN",
                    "TW": "zh_TW",
                    "US": "en_US",
                    "ES": "es_ES",
                    "PT": "pt_PT",
                    "PH": "en_PH"
                },
                oSmartDesignSwitchTipLink: {
                    "edibot": {
                        "img": "\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/img_editor_dnd.png",
                        "link": "\/\/ecsupport.cafe24.com\/board\/free\/list.html?board_act=list&board_no=12&category_no=9&cate_no=9"
                    },
                    "smart": {
                        "img": "\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/ko_KR\/img_editor_smart.png",
                        "link": "\/\/sdsupport.cafe24.com"
                    }
                },
                oSmartDesignDecoShopList: ["ko_KR", "ja_JP", "zh_CN", "en_US", "zh_TW", "es_ES", "pt_PT"],
                oSmartDesignDecoMultilingual: {
                    "list": {
                        "ko_KR": "KOREAN",
                        "en_US": "ENGLISH",
                        "ja_JP": "JAPANESE",
                        "zh_CN": "SIMPLIFIED.CHINESE",
                        "zh_TW": "TRADITIONAL.CHINESE",
                        "es_ES": "SPANISH",
                        "pt_PT": "PORTUGUESE",
                        "vi_VN": "VIETNAMESE"
                    },
                    "group_id": "EDITOR.LAYER.EDITING.DECO"
                },
                aSmartDesignModuleShopList: ["ko_KR", "ja_JP", "zh_CN", "en_US", "zh_TW", "es_ES", "pt_PT"]
            },
            oStore: {
                oMultiShopCurrencyInfo: {
                    "en_US": {
                        "currency": "USD"
                    },
                    "zh_CN": {
                        "currency": "USD",
                        "sub_currency": "CNY"
                    },
                    "ja_JP": {
                        "currency": "JPY"
                    },
                    "zh_TW": {
                        "currency": "TWD"
                    },
                    "es_ES": {
                        "currency": "EUR"
                    },
                    "pt_PT": {
                        "currency": "EUR"
                    },
                    "ko_KR": {
                        "currency": "KRW"
                    },
                    "vi_VN": {
                        "currency": "VND"
                    },
                    "en_PH": {
                        "currency": "PHP"
                    }
                },
                oBrowserRedirectLanguage: {
                    "ko": {
                        "primary": "ko_KR",
                        "secondary": "en_US"
                    },
                    "en": {
                        "detail": {
                            "en-ph": {
                                "primary": "en_PH",
                                "secondary": "en_US"
                            },
                            "en-us": {
                                "primary": "en_US",
                                "secondary": "es_ES"
                            },
                            "default": {
                                "primary": "en_US",
                                "secondary": "es_ES"
                            }
                        }
                    },
                    "ja": {
                        "primary": "ja_JP",
                        "secondary": "en_US"
                    },
                    "zh": {
                        "detail": {
                            "zh-cn": {
                                "primary": "zh_CN",
                                "secondary": "en_US"
                            },
                            "zh-tw": {
                                "primary": "zh_TW",
                                "secondary": "zh_CN"
                            },
                            "default": {
                                "primary": "en_US",
                                "secondary": "ko_KR"
                            }
                        }
                    },
                    "es": {
                        "primary": "es_ES",
                        "secondary": "en_US"
                    },
                    "pt": {
                        "primary": "pt_PT",
                        "secondary": "en_US"
                    },
                    "vi": {
                        "primary": "vi_VN",
                        "secondary": "en_US"
                    },
                    "default": {
                        "primary": "en_US",
                        "secondary": "ko_KR"
                    }
                },
                aChangeableLanguages: ["en_US", "vi_VN", "ja_JP", "ko_KR", "zh_TW", "th_TH"],
                aNoZipCodeLanguage: ["ko_KR", "ja_JP"]
            },
            oMobile: {
                sSmartWebAppFaqUrl: "https://ecsupport.cafe24.com/board/free/read.html?no=1832&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
                sAmpFaqUrl: "https://ecsupport.cafe24.com/board/free/read.html?no=1864&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
            },
            oPromotion: {
                bQrCodeAvailable: true,
                bSnsMarketingAvailable: true
            },
            oShippingReverseAddressLanguage: ["vi_VN", "en_PH"],

            oGlobalStandardSwitchHelpCodeLink: {
                "SH.DS": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/SH.DS.html"
                },
                "PR.DS": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/PR.DS.html"
                },
                "OR.SM.BO": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/OR.SM.BO.html"
                },
                "CU.DS": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/CU.DS.html"
                },
                "DE.DS": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/DE.DS.html"
                },
                "MB.DS": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/MB.DS.html"
                },
                "PM.DS": {
                    "link": "\/\/serviceguide.cafe24shop.com\/en_PH\/PM.DS.html"
                }
            },

            getAdminMainLocaleLanguage: function(sSkinLocaleCode) {
                var oLocaleData = [];
                var locale = "";
                var shopLangName = "";
                if (sSkinLocaleCode == "US") {
                    locale = "en_US";
                    shopLangName = "ENGLISH";
                } else if (sSkinLocaleCode == "JP") {
                    locale = "ja_JP";
                    shopLangName = "JAPANESE";
                } else if (sSkinLocaleCode == "CN") {
                    locale = "zh_CN";
                    shopLangName = "SIMPLIFIED.CHINESE";
                } else if (sSkinLocaleCode == "TW") {
                    locale = "zh_TW";
                    shopLangName = "TRADITIONAL.CHINESE";
                } else if (sSkinLocaleCode == "ES") {
                    locale = "es_ES";
                    shopLangName = "SPANISH";
                } else if (sSkinLocaleCode == "PT") {
                    locale = "pt_PT";
                    shopLangName = "PORTUGUESE";
                } else if (sSkinLocaleCode == "VN") {
                    locale = "vi_VN";
                    shopLangName = "VIETNAMESE";
                } else if (sSkinLocaleCode == "PH") {
                    locale = "en_PH";
                    shopLangName = "ENGLISH.PH";
                }
                oLocaleData["locale"] = locale;
                oLocaleData["shopLangName"] = shopLangName;
                return oLocaleData;
            }
        };
        var EC_GLOBAL_MALL_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_MALL_LANGUAGE_CODES');
    </script>
</head>

<body class="ECInfluencer">
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NBS7Z7L" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <div id="wrap" class="">
        <!-- [header] -->
        <div id="header">
            <!-- GNB Start -->

            <script type="text/javascript">
                function shop_admin_icon() {
                    if (confirm('바탕화면에 쇼핑몰 관리자 바로가기를 생성하시겠습니까?')) {
                        DesktopIconObj.addIcon('http://echosting.cafe24.com/Shop/', '쇼핑몰 관리 어드민', '//img.cafe24.com/images/ec_admin/etc/EC_quick_02.ico');
                        alert('생성되었습니다.');
                    } else {
                        alert('취소되었습니다.');
                    }
                }

                function addFavorite() {
                    var title = "쇼핑몰 관리 어드민";
                    var url = "http://echosting.cafe24.com/Shop/";
                    if (window.sidebar && window.sidebar.addPanel) { //firefox
                        window.sidebar.addPanel(title, url, "");
                    } else if (window.opera && window.print) { //opera
                        var elem = document.createElement('a');
                        elem.setAttribute('href', url);
                        elem.setAttribute('title', title);
                        elem.setAttribute('rel', 'sidebar');
                        elem.click();
                    } else if (document.all) { //msie
                        window.external.AddFavorite(url, title);
                    } else {
                        alert("죄송합니다.\n\n사용하시는 브라우저는 즐겨찾기 추가 기능이 지원되지 않습니다.\n\n수동으로 즐겨찾기를 추가해 주셔야 합니다.");
                        return true;
                    }
                }

                function ep_purge() {
                    var msg = '서버상의 이미지 및 기타 설정 등의 임시 저장소 파일을 갱신하여\n';
                    msg += '최신정보로 적용합니다.\n\n';
                    msg += '※  해당 기능을 자주 사용하시면 서버부하의 원인이 될 수 있습니다.\n';
                    msg += '각종 수정작업 등을 완료한 후에 실행하여 주세요.\n\n';
                    msg += '사이드캐시 삭제를 실행하시겠습니까?';

                    if (confirm(msg)) {
                        MENU_NAVIGATION_GNB.sendRequest(ep_purge_msg, '', 'GET', '/admin/php/shop1/m/ep_purge.php', true, true);
                    }
                }

                function setEpPurgeUrl() {
                    var sOption = 'toolbar=no location=no scrollbars=yes status=yes resizable=no width=760 height=450';
                    window.open('/disp/admin/shop1/varnish/PurgePage', 'setEpPurgeUrl', sOption);
                }

                function ep_purge_msg(oj) {
                    var res = oj.responseText;
                    if (res == 'SUCCESS') {
                        alert('정상적으로 처리되었습니다.');
                    } else if (res == 'ERR1') {
                        alert('EP 서버리스트가 없습니다.');
                    } else {
                        alert('정상적으로 처리되지 않았습니다.\n\n확인 후 다시 시도하여 주십시오.');
                    }
                }

                function addCafe24CustomerId() {
                    $.ajax({
                        url: '/admin/php/shop1/m/addCafe24CustomerId.php',
                        success: function(oResponse) {
                            var jResponse = JSON.parse(oResponse);
                            alert(jResponse.message);
                        },
                        beforeSend: function() {
                            $("#eAddcafe24CustomerIdBtn").css("display", "none");
                            $("#cafe24CustomerIdLoading").css("display", "inline-block");
                        },
                        complete: function() {
                            $("#cafe24CustomerIdLoading").css("display", "none");
                            $("#eAddcafe24CustomerIdBtn").css("display", "");
                        }
                    });
                }
            </script>


            <div class="header">
                <div class="head">
                    <h1 class="logo">
                        <a href="/disp/admin/shop1/mode/dashboard">
                            <img src="//img.echosting.cafe24.com/ec/mode/easiest/common/h1_logo.png" alt="cafe24">
                        </a>
                    </h1>
                    <!-- 뉴상품 -->
                    <div class="changeModeToggle">
                        <strong class="mode now" id="ec-influencer-gnb-mode-smart">스마트모드</strong>
                        <label class="toggle ec-influencer-gnb-mode-change">
                            <input type="checkbox" class="check" id="ec-influencer-gnb-mode-change-checkbox">
                            <span class="label"></span>
                        </label>
                        <strong class="mode ec-influencer-gnb-mode-change" id="ec-influencer-gnb-mode-pro" style="cursor: pointer;">프로모드</strong>
                    </div>
                    <div class="shopMall">
                        <a href="/admin/php/shop1/m/goto_front.php" target="_blank" class="btnPc">PC쇼핑몰 바로가기</a>
                        <a href="/admin/php/shop1/m/goto_front.php?type=mobile" target="_blank" class="btnMobile">모바일쇼핑몰 바로가기</a>
                    </div>
                </div>
                <ul class="util">
                    <!-- [TOP MENU] Language -->


                    <!-- [TOP MENU] Help Center -->
                    <li class="guide">
                        <button type="button" class="btnMore eClick ec-mode-gnb-menu">더보기</button>
                        <div class="dropLayer">
                            <div class="divide">
                                <strong class="title">Help Center</strong>
                                <ul class="link">
                                    <!-- 고객센터 -->
                                    <li class="newWindow"><a href="//ecsupport.cafe24.com/" target="_blank" title="새창 열림">고객센터</a></li>
                                    <!-- 1;1 문의 -->
                                    <li class="newWindow"><a href="/admin/php/shop1/AutoLogin/request.php?uri=https%3A%2F%2Fechosting.cafe24.com%2FCs%2F%3Furl%3DCsboard%26userid%3Dydh312%26loginid%3Dydh312" target="_blank">1:1 문의</a></li>
                                </ul>
                            </div>
                            <div class="divide">
                                <strong class="title">전화상담 (평일 09:00 ~ 18:00)</strong>
                                <p class="telNum"><strong>1588-3413</strong></p>
                            </div>
                        </div>
                    </li>
                    <!-- [TOP MENU] cafe24 link menu -->
                    <li class="shortcut">
                        <button type="button" class="btnMore eClick ec-mode-gnb-menu">더보기</button>
                        <div class="dropLayer">
                            <div class="divide">
                                <!-- 카페24 추천서비스 -->
                                <strong class="title">카페24 추천서비스</strong>
                                <ul class="link">
                                    <!-- 앱스토어 -->
                                    <li class="newWindow"><a href="https://store.cafe24.com/kr/common/auth?mall_id=ydh312&amp;menu_id=1&amp;language=ko" target="_blank" title="새창 열림">앱스토어</a></li>
                                    <!-- 레시피 -->
                                    <li class="newWindow"><a href="/exec/admin/shop1/Member/AutoLoginRequestRecipe" target="_blank" title="새창 열림">레시피</a></li>
                                    <!-- 쇼핑몰 센터 -->
                                    <li class="newWindow"><a href="/admin/php/shop1/AutoLogin/request.php?uri=https%3A%2F%2Fechosting.cafe24.com%2F" target="_blank" title="새창 열림">쇼핑몰센터</a></li>
                                    <!-- 개발자 센터 -->
                                    <li class="newWindow"><a href="https://developers.cafe24.com/?language= echo substr(sGlobal()->getLanguageCode(), 0, 2); " target="_blank" title="새창 열림">Developers</a></li>
                                    <!-- Expert -->
                                    <li class="newWindow"><a href="https://experts.cafe24.com/" target="_blank" title="새창 열림">엑스퍼트</a></li>
                                    <!-- 카페24 금융정보 -->
                                    <li class="newWindow"><a href="" target="_blank" title="새창 열림">카페24 금융정보</a></li>
                                </ul>
                            </div>
                            <div class="divide">
                                <!-- 카페24 패밀리센터 -->
                                <strong class="title">카페24 패밀리센터</strong>
                                <ul class="link">
                                    <!-- 마케팅 센터 -->
                                    <li class="newWindow"><a href="/admin/php/shop1/AutoLogin/request.php?menu_code=9&amp;uri=http://cmc.cafe24.com" target="_blank" title="새창 열림">마케팅센터</a></li>
                                    <!-- 디자인 센터 -->
                                    <li class="newWindow"><a href="https://d.cafe24.com" target="_blank" title="새창 열림">디자인센터</a></li>
                                    <!-- 창업 센터 -->
                                    <li class="newWindow"><a href="https://soho.cafe24.com/" target="_blank" title="새창 열림">창업센터</a>
                                        <!-- 교육 센터 -->
                                    </li>
                                    <li class="newWindow"><a href="http://edu.cafe24.com" target="_blank" title="새창 열림">교육센터</a></li>
                                </ul>
                            </div>
                            <!-- 편의 기능 -->
                            <div class="divide">
                                <strong class="title">편의기능</strong>
                                <ul class="link">
                                    <!-- 즐겨찾기 추가 -->
                                    <li class="newWindow"><a href="#" class="link" onclick="addFavorite();">즐겨찾기 추가</a></li>
                                    <!-- 바탕화면 추가 -->
                                    <li class="newWindow"><a href="#" class="link" onclick="shop_admin_icon();">바탕화면 추가</a></li>

                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>

                <div class="member">
                    <span class="icoUser"></span>
                    <button type="button" class="btnMore eClick ec-mode-gnb-menu">회원정보 보기</button>
                    <div class="dropLayer">
                        <div class="userInfo">
                            <span class="label">대표운영자님</span>
                            <p class="name"><strong class="mall">ydh312</strong></p>
                        </div>
                        <div class="divide">
                            <ul class="link">
                                <!-- 내 쇼핑몰 정보 -->
                                <li><a href="/disp/admin/shop1/Mode/SettingStore">내쇼핑몰정보</a></li>
                                <!-- 운영자 관리 -->
                                <li><a href="/admin/php/shop1/m/manager_info_f.php">운영자 관리</a></li>
                                <!-- CS전용계정 생성 -->
                                <li>
                                    <a href="#none" id="eAddcafe24CustomerIdBtn" class="btnCS" onclick="addCafe24CustomerId(); return false;">CS전용 계정생성</a>
                                    <span id="cafe24CustomerIdLoading" style="display:none; vertical-align: middle;width:100%;text-align:center;">
                                        <img src="//img.echosting.cafe24.com/suio/ico_loading.gif" alt="loading">
                                    </span>
                                </li>
                            </ul>
                        </div>
                        <!-- 로그아웃 -->
                        <a href="/admin/php/shop1/log_out.php" class="btnLogout">로그아웃</a>
                    </div>
                </div>
            </div>

            <script type="text/javascript">
                /* jQUERY 3.4.1 */
                var _jQuery = (window.jQuery !== undefined) ? window.jQuery : undefined;
                var _$ = (window.$ !== undefined) ? window.$ : undefined;
            </script>
            <script type="text/javascript" src="/admin/js/jquery-3.4.1.min.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
            <script type="text/javascript" src="/admin/js/smarthelper-ui.js?vs=19.454.2.20220602.RLS" charset="utf-8"></script>
            <script type="text/javascript">
                var EC_JQUERY_3_4_1 = (function(jQuery, _jQuery, _$) {
                    var prefix = 'EC_JQ3';
                    if (window.hasOwnProperty(prefix) && window[prefix].ui) return;
                    window.EC_JQ3 = jQuery.noConflict();
                    window.jQuery = _jQuery;
                    window.$ = _$;
                })(jQuery, _jQuery, _$);
            </script>
            <!-- GNB End -->
        </div><!-- //[header] -->
        <hr class="layout">
        <div id="container">
            <!-- sidebar -->
            <%@include file="../common/shop_sidebar.jsp" %>
            <hr class="layout">

            <!-- [content] -->
            <div id="content">
                <form name="frm" id="frm" method="post" action="./board_admin_bulletin_l.php" target="_self">
                    <input type="hidden" name="mode" value="">
                    <input type="hidden" id="EC_SDE_SHOP_NUM" value="1">
                    <input type="hidden" id="isFloatingNumber" value="F">
                    <input type="hidden" id="sNewboardAnd12rFlag" value="T">
                    <input type="hidden" id="sIsUse12R" value="T">
                    <input type="hidden" id="MALL_ID" value="ydh312">
                    <input type="hidden" id="PRODUCT_VER" value="2">
                    <input type="hidden" id="hiddenToday" value="2022-06-10">
                    <input type="hidden" name="period" value="30">
                    <input type="hidden" id="navi_hide" name="navi_hide" value="">

                    <div class="headingArea">
                        <div class="mTitle">
                            <h1>게시물 관리</h1>
                            <div class="cTip" code="BR.BO.BA.110"></div>
                            <span style="display: none;" class="cManual" code="BR.BO.BA" href="brd/brd1010001"></span>
                            <span class="cManual eSmartMode" code="BD.BA"><a href="//serviceguide.cafe24.com/IN/ko_KR/BD.BA.html" target="_blank" class="btnManual" title="새창 열림">매뉴얼</a></span>
                        </div>
                        <div class="mBreadcrumb">
                            <ol>
                                <li class="home">홈</li>
                                <li>게시판관리</li>
                                <li class="now" title="현재 페이지">게시물 관리</li>
                            </ol>
                        </div>
                    </div>

                    <div class="mTab typeNav" style="display: none;">
                        <ul>
                            <li class="selected"><a href="#none">전체 게시물 보기</a></li>
                            <li><a href="board_admin_bulletin_comment_l.php">전체 댓글 보기</a></li>
                            <li><a href="board_admin_bulletin_report_l.php">신고된 게시물 보기</a></li>
                        </ul>
                    </div>

                    <%@include file="review_search.jsp" %>
                    
                    <%@include file="review_result.jsp" %>
                    
                </form>

                <div id="memo_view_cafe24" style="position:absolute; visibility:hidden;">
                    <table class="table_white" cellpadding="3" cellspacing="3" border="0" style="border:1px solid;" width="300" height="100">
                        <tbody>
                            <tr>
                                <td style="padding-top:5px; BACKGROUND:white; FILTER:alpha(opacity=85);" valign="top">

                                    <!--ECHOSTING-330543 : padding 추가 -->
                                    <div id="memo_view_detail_cafe24" style="padding: 10px;"></div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="mBox typeBg" style="display: none;">
                    <div class="gLeft">
                        <ul class="mList typeMore">
                            <li>게시판에서 삭제된 글 확인/복원 가능한 기능입니다.</li>
                            <li><span class="txtWarn">삭제된 글은 삭제일로 부터 30일 동안만 저장되고 30일이 경과한 게시글은 영구 삭제되어 복원 불가능합니다.</span></li>
                        </ul>
                    </div>
                    <div class="gRight"><a href="#none" class="btnSubmit" onclick="window.open('board_admin_bulletin_del_list.php','board_admin_bulletin_del_list','width=800,height=900,scrollbars=yes');"><span>삭제된 글 보기</span></a></div>
                </div>

                <!--미리보기-->
                <div class="mLayer ui-draggable ui-resizable" style="display:none;width:auto;" id="layerPreview">
                    <h2>게시글 내용 미리보기</h2>
                    <div class="wrap" style="width:400px;height:400px;" id="eBulletinContentWrap">
                        <iframe id="eBulletinContent" frameborder="0" width="400px" height="400px" marginwidth="0" marginheight="0" scrolling="auto"></iframe>
                    </div>
                    <div class="footer">
                        <a href="#none" class="btnNormal eClose"><span>닫기</span></a>
                    </div>
                    <button type="button" class="btnClose eClose" id="layerPreviewClose">닫기</button>
                    <div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div>
                    <div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div>
                    <div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
                </div>
            </div><!-- //[content] -->
        </div>
    </div>
    <!--첨부파일 미리보기-->
    <div id="layerView" class="mLayer gMedium">
        <h2>미리보기</h2>
        <div class="wrap">
            <span class="figure" id="layerViewImg"></span>
        </div>
        <button type="button" class="btnClose eClose">닫기</button>
    </div>

    <script type="text/javascript"></script>

    <script type="text/javascript">
        if (typeof jQuery !== 'undefined') {
            $(document).ready(function() {

            });
        } else {
            if (window.frameElement) {
                var documentHeader = parent.document.getElementById('check_use_motion');
                if (documentHeader) {
                    document.onselectstart = document.oncopy = document.oncut = document.onpaste = document.oncontextmenu = new Function('return false');
                }
            }
        }
    </script>

    <script type="text/javascript" id="">
        function getCookie(d) {
            var a, b = document.cookie.split(";");
            for (a = 0; a < b.length; a++) {
                var c = b[a].substr(0, b[a].indexOf("\x3d"));
                var e = b[a].substr(b[a].indexOf("\x3d") + 1);
                c = c.replace(/^\s+|\s+$/g, "");
                c == d && dataLayer.push({
                    event: "modeEvent",
                    modeValue: unescape(e)
                })
            }
        }
        getCookie("is_mode");
    </script>
</body>

</html>