<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" class="hydrated">

<head>
    <style data-styles="">
        duet-date-picker {
            visibility: hidden
        }

        .hydrated {
            visibility: inherit
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if IE 10]><meta http-equiv="X-UA-Compatible" content="IE=8" /><![endif]-->
    <title>매출확인하기</title>
    <!-- Google Tag Manager -->
    <script async="" src="https://a.clarity.ms/s/0.6.34/clarity.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-LMD9WDQL79&amp;l=dataLayer&amp;cx=c"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H2L994D8BT&amp;l=dataLayer&amp;cx=c"></script>
    <script src="/ind-script/optimizer.php?filename=08_Iz03VNzQq0i8oyk8vSszVLy8v18_MS-EqTi7KLCjRz0oFY57czDyerGIA&amp;type=js&amp;k=f8c449ff82a3977059c3195db755507c2666c339&amp;t=1654150959"></script>
    <script async="" src="https://www.clarity.ms/tag/7pz1hzx5td"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-NBS7Z7L"></script>
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
    <script type="text/javascript">
        (function(i, s, o, g, r, a, m) {
            a = s.createElement(o);
            m = s.getElementsByTagName(o)[0];
            a.src = g;
            a.onload = function() {
                i[r].init('https://js-error-tracer-api.cafe24.com', {
                    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ5ZGgzMTIuY2FmZTI0LmNvbSIsImF1ZCI6ImpzLWVycm9yLXRyYWNlci1hcGkuY2FmZTI0LmNvbSIsIm1hbGxfaWQiOiJ5ZGgzMTIiLCJzaG9wX25vIjoxLCJwYXRoX3JvbGUiOiJBRE1JTiIsImxhbmd1YWdlX2NvZGUiOiJrb19LUiIsImNvdW50cnlfY29kZSI6IktSIiwib3JpZ2luIjoiaHR0cHM6XC9cL3lkaDMxMi5jYWZlMjQuY29tIiwiaXNfY29udGFpbmVyIjp0cnVlLCJob3N0bmFtZSI6IiJ9.CQy9w8MfvA8VX0QOx60okfy3W2MkP6dTzkYzGzip_H0",
                    "collectWindowErrors": true,
                    "preventDuplicateReport": true,
                    "storageKeyPrefix": "EC_JET.ADMIN"
                });
            };
            m.parentNode.insertBefore(a, m);
        }(window, document, 'script', '/ind-script/optimizer.php?filename=08_Iz03VNzQq0i8oyk8vSszVLy8v18_MS-EqTi7KLCjRz0oFY57czDyerGIA&type=js&k=f8c449ff82a3977059c3195db755507c2666c339&t=1654150959', 'EC_JET'));
        CAFE24.ADMIN_SERVICE_URL = {
            "sBmScvDomain": "https:\/\/bm-svc.cafe24.com"
        };
        var EC_ADMIN_SERVICE_URL = CAFE24.getDeprecatedNamespace('EC_ADMIN_SERVICE_URL');
        typeof window.CAFE24 === "undefined" && (window.CAFE24 = {});
    </script>
    <style>
        .duet-date *,
        .duet-date *::before,
        .duet-date *::after {
            box-sizing: border-box;
            margin: 0;
            width: auto
        }

        .duet-date {
            box-sizing: border-box;
            color: var(--duet-color-text);
            display: block;
            font-family: var(--duet-font);
            margin: 0;
            position: relative;
            text-align: left;
            width: 100%
        }

        .duet-date__input {
            -webkit-appearance: none;
            appearance: none;
            background: var(--duet-color-surface);
            border: 1px solid var(--duet-color-text);
            border-radius: var(--duet-radius);
            color: var(--duet-color-text);
            float: none;
            font-family: var(--duet-font);
            font-size: 100%;
            line-height: normal;
            padding: 14px 60px 14px 14px;
            width: 100%
        }

        .duet-date__input:focus {
            border-color: var(--duet-color-primary);
            box-shadow: 0 0 0 1px var(--duet-color-primary);
            outline: 0
        }

        .duet-date__input::-webkit-input-placeholder {
            color: var(--duet-color-placeholder);
            opacity: 1
        }

        .duet-date__input:-moz-placeholder {
            color: var(--duet-color-placeholder);
            opacity: 1
        }

        .duet-date__input:-ms-input-placeholder {
            color: var(--duet-color-placeholder)
        }

        .duet-date__input-wrapper {
            position: relative;
            width: 100%
        }

        .duet-date__toggle {
            -moz-appearance: none;
            -webkit-appearance: none;
            -webkit-user-select: none;
            align-items: center;
            appearance: none;
            background: var(--duet-color-button);
            border: 0;
            border-radius: 0;
            border-bottom-right-radius: var(--duet-radius);
            border-top-right-radius: var(--duet-radius);
            box-shadow: inset 1px 0 0 rgba(0, 0, 0, 0.1);
            color: var(--duet-color-text);
            cursor: pointer;
            display: flex;
            height: calc(100% - 2px);
            justify-content: center;
            padding: 0;
            position: absolute;
            right: 1px;
            top: 1px;
            user-select: none;
            width: 48px;
            z-index: 2
        }

        .duet-date__toggle:focus {
            box-shadow: 0 0 0 2px var(--duet-color-primary);
            outline: 0
        }

        .duet-date__toggle-icon {
            display: flex;
            flex-basis: 100%;
            justify-content: center;
            align-items: center
        }

        .duet-date__dialog {
            display: flex;
            left: 0;
            min-width: 320px;
            opacity: 0;
            position: absolute;
            top: 100%;
            transform: scale(0.96) translateZ(0) translateY(-20px);
            transform-origin: top right;
            transition: transform 300ms ease, opacity 300ms ease, visibility 300ms ease;
            visibility: hidden;
            width: 100%;
            will-change: transform, opacity, visibility;
            z-index: var(--duet-z-index)
        }

        @media (max-width: 35.9375em) {
            .duet-date__dialog {
                background: var(--duet-color-overlay);
                bottom: 0;
                position: fixed;
                right: 0;
                top: 0;
                transform: translateZ(0);
                transform-origin: bottom center
            }
        }

        .duet-date__dialog.is-left {
            left: auto;
            right: 0;
            width: auto
        }

        .duet-date__dialog.is-active {
            opacity: 1;
            transform: scale(1.0001) translateZ(0) translateY(0);
            visibility: visible
        }

        .duet-date__dialog-content {
            background: var(--duet-color-surface);
            border: 1px solid rgba(0, 0, 0, 0.1);
            border-radius: var(--duet-radius);
            box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.1);
            margin-left: auto;
            margin-top: 8px;
            max-width: 310px;
            min-width: 290px;
            padding: 16px 16px 20px;
            position: relative;
            transform: none;
            width: 100%;
            z-index: var(--duet-z-index)
        }

        @media (max-width: 35.9375em) {
            .duet-date__dialog-content {
                border: 0;
                border-radius: 0;
                border-top-left-radius: var(--duet-radius);
                border-top-right-radius: var(--duet-radius);
                bottom: 0;
                left: 0;
                margin: 0;
                max-width: none;
                min-height: 26em;
                opacity: 0;
                padding: 0 8% 20px;
                position: absolute;
                transform: translateZ(0) translateY(100%);
                transition: transform 400ms ease, opacity 400ms ease, visibility 400ms ease;
                visibility: hidden;
                will-change: transform, opacity, visibility
            }

            .is-active .duet-date__dialog-content {
                opacity: 1;
                transform: translateZ(0) translateY(0);
                visibility: visible
            }
        }

        .duet-date__table {
            border-collapse: collapse;
            border-spacing: 0;
            color: var(--duet-color-text);
            font-size: 1rem;
            font-weight: var(--duet-font-normal);
            line-height: 1.25;
            text-align: center;
            width: 100%
        }

        .duet-date__table-header {
            font-size: 0.75rem;
            font-weight: var(--duet-font-bold);
            letter-spacing: 1px;
            line-height: 1.25;
            padding-bottom: 8px;
            text-decoration: none;
            text-transform: uppercase
        }

        .duet-date__cell {
            text-align: center
        }

        .duet-date__day {
            -moz-appearance: none;
            -webkit-appearance: none;
            appearance: none;
            background: transparent;
            border: 0;
            border-radius: 50%;
            color: var(--duet-color-text);
            cursor: pointer;
            display: inline-block;
            font-family: var(--duet-font);
            font-size: 0.875rem;
            font-variant-numeric: tabular-nums;
            font-weight: var(--duet-font-normal);
            height: 36px;
            line-height: 1.25;
            padding: 0 0 1px;
            position: relative;
            text-align: center;
            vertical-align: middle;
            width: 36px;
            z-index: 1
        }

        .duet-date__day.is-today {
            box-shadow: 0 0 0 1px var(--duet-color-primary);
            position: relative;
            z-index: 200
        }

        .duet-date__day:hover::before,
        .duet-date__day.is-today::before {
            background: var(--duet-color-primary);
            border-radius: 50%;
            bottom: 0;
            content: "";
            left: 0;
            opacity: 0.06;
            position: absolute;
            right: 0;
            top: 0
        }

        [aria-selected=true] .duet-date__day,
        .duet-date__day:focus {
            background: var(--duet-color-primary);
            box-shadow: none;
            color: var(--duet-color-text-active);
            outline: 0
        }

        .duet-date__day:active {
            background: var(--duet-color-primary);
            box-shadow: 0 0 5px var(--duet-color-primary);
            color: var(--duet-color-text-active);
            z-index: 200
        }

        .duet-date__day:focus {
            box-shadow: 0 0 5px var(--duet-color-primary);
            z-index: 200
        }

        .duet-date__day.is-disabled {
            background: transparent;
            box-shadow: none;
            color: var(--duet-color-text);
            cursor: default;
            opacity: 0.5
        }

        .duet-date__day.is-disabled::before {
            display: none
        }

        .duet-date__day.is-outside {
            background: var(--duet-color-button);
            box-shadow: none;
            color: var(--duet-color-text);
            cursor: default;
            opacity: 0.6;
            pointer-events: none
        }

        .duet-date__day.is-outside::before {
            display: none
        }

        .duet-date__header {
            align-items: center;
            display: flex;
            justify-content: space-between;
            margin-bottom: 16px;
            width: 100%
        }

        .duet-date__nav {
            white-space: nowrap
        }

        .duet-date__prev,
        .duet-date__next {
            -moz-appearance: none;
            -webkit-appearance: none;
            align-items: center;
            appearance: none;
            background: var(--duet-color-button);
            border: 0;
            border-radius: 50%;
            color: var(--duet-color-text);
            cursor: pointer;
            display: inline-flex;
            height: 32px;
            justify-content: center;
            margin-left: 8px;
            padding: 0;
            transition: background-color 300ms ease;
            width: 32px
        }

        @media (max-width: 35.9375em) {

            .duet-date__prev,
            .duet-date__next {
                height: 40px;
                width: 40px
            }
        }

        .duet-date__prev:focus,
        .duet-date__next:focus {
            box-shadow: 0 0 0 2px var(--duet-color-primary);
            outline: 0
        }

        .duet-date__prev:active:focus,
        .duet-date__next:active:focus {
            box-shadow: none
        }

        .duet-date__prev:disabled,
        .duet-date__next:disabled {
            cursor: default;
            opacity: 0.5
        }

        .duet-date__prev svg,
        .duet-date__next svg {
            margin: 0 auto
        }

        .duet-date__select {
            display: inline-flex;
            margin-top: 4px;
            position: relative
        }

        .duet-date__select span {
            margin-right: 4px
        }

        .duet-date__select select {
            cursor: pointer;
            font-size: 1rem;
            height: 100%;
            left: 0;
            opacity: 0;
            position: absolute;
            top: 0;
            width: 100%;
            z-index: 2
        }

        .duet-date__select select:focus+.duet-date__select-label {
            box-shadow: 0 0 0 2px var(--duet-color-primary)
        }

        .duet-date__select-label {
            align-items: center;
            border-radius: var(--duet-radius);
            color: var(--duet-color-text);
            display: flex;
            font-size: 1.25rem;
            font-weight: var(--duet-font-bold);
            line-height: 1.25;
            padding: 0 4px 0 8px;
            pointer-events: none;
            position: relative;
            width: 100%;
            z-index: 1
        }

        .duet-date__select-label svg {
            width: 16px;
            height: 16px
        }

        .duet-date__mobile {
            align-items: center;
            border-bottom: 1px solid rgba(0, 0, 0, 0.12);
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            margin-left: -10%;
            overflow: hidden;
            padding: 12px 20px;
            position: relative;
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 120%
        }

        @media (min-width: 36em) {
            .duet-date__mobile {
                border: 0;
                margin: 0;
                overflow: visible;
                padding: 0;
                position: absolute;
                right: -8px;
                top: -8px;
                width: auto
            }
        }

        .duet-date__mobile-heading {
            display: inline-block;
            font-weight: var(--duet-font-bold);
            max-width: 84%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap
        }

        @media (min-width: 36em) {
            .duet-date__mobile-heading {
                display: none
            }
        }

        .duet-date__close {
            -webkit-appearance: none;
            align-items: center;
            appearance: none;
            background: var(--duet-color-button);
            border: 0;
            border-radius: 50%;
            color: var(--duet-color-text);
            cursor: pointer;
            display: flex;
            height: 24px;
            justify-content: center;
            padding: 0;
            width: 24px
        }

        @media (min-width: 36em) {
            .duet-date__close {
                opacity: 0
            }
        }

        .duet-date__close:focus {
            box-shadow: 0 0 0 2px var(--duet-color-primary);
            outline: none
        }

        @media (min-width: 36em) {
            .duet-date__close:focus {
                opacity: 1
            }
        }

        .duet-date__close svg {
            margin: 0 auto
        }

        .duet-date__vhidden {
            border: 0;
            clip: rect(1px, 1px, 1px, 1px);
            height: 1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            top: 0;
            width: 1px
        }
    </style>
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/calendars/duetds/css/default.css" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/calendars/duetds/css/themes/ec-date-picker.css" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/easiest/common.css" media="all" charset="utf-8">

    <link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=PcbJDYAwDATAAqCXFXRkGQcCuVjLQnTPj3kNjl4Ny0okSrWn8wLNe1ANkYfohfMO44tRYs_NoVKsbcI_U25pVvcP&amp;type=css&amp;k=144d62e8fbf2ddb0916819093bf462140c56856f&amp;t=1654150959">
    <script type="text/javascript">
        function getMultiShopUrl(sUrl) {
            if (SHOP.isMultiShop() === false) {
                return sUrl;
            } else if (/^\/((?:disp|exec)\/admin|admin\/php)(\/shop\d+)\//.test(sUrl) === true) {
                return sUrl;
            } else {
                return sUrl.replace(/\/((?:disp|exec)\/admin|admin\/php)(\/shop\d+)?\//, "/$1/shop" + EC_SDE_SHOP_NUM + "/");
            }
        }
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
                return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode);
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
            isSDE: function() {
                return true;
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
                    // bIsNumberFormat 사용하려면 Ui(':libUipackCurrency')->plugin('Currency') 화폐 라이브러리 추가 필요
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
        CAFE24.CURRENCY_INFO = {
            getOriginReferenceCurrency: function() {
                return 'USD'
            },
            getCurrencyList: function(sCurrencyCode) {
                var aCurrencyList = {
                    "JPY": {
                        "currency_symbol": "&yen;",
                        "decimal_place": 0,
                        "round_method_type": "F"
                    },
                    "VND": {
                        "currency_symbol": "&#8363;",
                        "decimal_place": 0,
                        "round_method_type": "F"
                    },
                    "PHP": {
                        "currency_symbol": "&#8369;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "USD": {
                        "currency_symbol": "$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "CNY": {
                        "currency_symbol": "&yen;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "TWD": {
                        "currency_symbol": "NT$",
                        "decimal_place": 0,
                        "round_method_type": "F"
                    },
                    "EUR": {
                        "currency_symbol": "\u20ac",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "BRL": {
                        "currency_symbol": "R$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "AUD": {
                        "currency_symbol": "A$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "BHD": {
                        "currency_symbol": ".&#1583;.&#1576;",
                        "decimal_place": 3,
                        "round_method_type": "R"
                    },
                    "BDT": {
                        "currency_symbol": "&#2547;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "GBP": {
                        "currency_symbol": "&pound;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "CAD": {
                        "currency_symbol": "C$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "CZK": {
                        "currency_symbol": "K&#269;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "DKK": {
                        "currency_symbol": "kr",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "HKD": {
                        "currency_symbol": "HK$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "HUF": {
                        "currency_symbol": "Ft",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "INR": {
                        "currency_symbol": "&#8377;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "IDR": {
                        "currency_symbol": "Rp",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "ILS": {
                        "currency_symbol": "&#8362;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "JOD": {
                        "currency_symbol": " &#1583;&#1610;&#1606;&#1575;&#1585;",
                        "decimal_place": 3,
                        "round_method_type": "R"
                    },
                    "KWD": {
                        "currency_symbol": "&#1583;&#1610;&#1606;&#1575;&#1585;",
                        "decimal_place": 3,
                        "round_method_type": "R"
                    },
                    "MYR": {
                        "currency_symbol": "RM",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "MXN": {
                        "currency_symbol": "Mex$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "NZD": {
                        "currency_symbol": "NZ$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "NOK": {
                        "currency_symbol": "kr",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "PKR": {
                        "currency_symbol": "&#8360;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "PLN": {
                        "currency_symbol": "z\u0142",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "RUB": {
                        "currency_symbol": "\u0440\u0443\u0431",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "SAR": {
                        "currency_symbol": "&#65020;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "SGD": {
                        "currency_symbol": "S$",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "ZAR": {
                        "currency_symbol": "R",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "SEK": {
                        "currency_symbol": "kr",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "CHF": {
                        "currency_symbol": "Fr",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "THB": {
                        "currency_symbol": "&#3647;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "TRY": {
                        "currency_symbol": "TL",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    },
                    "AED": {
                        "currency_symbol": "&#1601;&#1604;&#1587;",
                        "decimal_place": 2,
                        "round_method_type": "R"
                    }
                };
                return aCurrencyList[sCurrencyCode]
            },
            isUseReferenceCurrency: function() {
                return false
            }
        };
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
        CAFE24.SHOP_LIB_INFO = {
            getBankInfo: function() {
                var oBankInfo = "";
                $.ajax({
                    type: "GET",
                    url: "/exec/front/Shop/Bankinfo",
                    dataType: "json",
                    async: false,
                    success: function(oResponse) {
                        oBankInfo = oResponse;
                    }
                });
                return oBankInfo;
            }
        };
        var EC_SDE_SHOP_NUM = CAFE24.SDE_SHOP_NUM;
        var SHOP = CAFE24.getDeprecatedNamespace('SHOP');
        var EC_COMMON_UTIL = CAFE24.getDeprecatedNamespace('EC_COMMON_UTIL');
        var EC_SHOP_LIB_INFO = CAFE24.getDeprecatedNamespace('EC_SHOP_LIB_INFO');
        var EC_CURRENCY_INFO = CAFE24.getDeprecatedNamespace('EC_CURRENCY_INFO');
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

<body class="">
    <div id="wrap" class="">
        <!-- header -->
        <%@include file="../common/shop_menuTop.jsp" %>
        <hr class="layout">
        <div id="container" class="">
            <!--  class="snbHidden" -->


            <%@include file="../common/shop_sidebar.jsp" %>

            <hr class="layout">

            <!-- Content Start -->
            <!-- Content Start -->
            <div id="content">

                <div class="headingArea">
                    <div class="mTitle">
                        <h1>매출 분석 </h1>
                        <span class="cManual eSmartMode" code="SS.SQ.DA"><a href="//serviceguide.cafe24.com/IN/ko_KR/SS.SQ.DA.html" target="_blank" class="btnManual" title="새창 열림">매뉴얼</a></span>

                    </div>
                    <div class="mBreadcrumb">
                        <ol>
                            <li class="home">홈</li>
                            <li>통계분석</li>
                            <li class="now" title="현재 페이지">매출 분석</li>
                        </ol>
                    </div>
                    <div class="mAdBanner">
                        <span id="admngDebug"></span><span id="admngSide_1"><a href="#"><img src="//m-img.cafe24.com/images/event/2021/02/hjs_400X56.jpg" name="admngPopImage"></a><img id="admngViewImage_5802_43506" src="https://ad.cafe24.com/adManager/controller/ConclusionViewAD.php?idx=43506&amp;siteType=malladmin&amp;groupIdx=5802&amp;parentAdIDX=" style="display: none;"></span>
                        <script id="admng" type="text/javascript" src="//ad.cafe24.com/adManager/logic/WebAnalysis.js?siteType=malladmin&amp;userID=ydh312&amp;groupIdx=5802"></script>
                    </div>
                </div>
                <!-- 인풀루언서 TAB -->
                <div class="mTab typeNav">
                    <ul>
                        <li class="selected"><a href="#none" class="_report_daily">일별 매출</a></li>
                        <li><a href="#none" class="_report_weekly">주별 매출</a></li>
                        <li><a href="#none" class="_report_monthly">월별 매출</a></li>
                    </ul>
                </div>

                <!-- 인풀루언서 TAB -->
                <div class="mBox typeAll notice">
                    <p class="txtWarn">통계자료는 국세청 및 기타제출용 자료로 사용이 불가능하며, 쇼핑몰 운영의 참고자료로 이용하시기 바랍니다. </p>
                </div>
                <form id="searchForm" name="searchForm" method="post" action="/shop/income/search">
                	<!-- name을 종류로바꾸기 -->
                	<input type="hidden" name="daily" value="daily">
                    <input type="hidden" id="excel_public_auth" name="excel_public_auth" value="T">
                    <input type="hidden" name="searchDateRange" id="searchDateRange" value="7">
                    <input type="hidden" name="sIsExceptMall" id="sIsExceptMall" value="F">

                    <%@include file="daily_search.jsp" %>
                    <%@include file="daily_result.jsp" %>
                </form>
            </div>

        </div>
    </div>

    <script type="text/javascript" src="//img.echosting.cafe24.com/calendars/duetds/js/3.6.5/duet.js?vs=2206021105" charset="utf-8"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/calendars/duetds/js/i18n/internationalization.js" charset="utf-8"></script>
    <script type="text/javascript" src="//ydh312.cafe24.com/admin/js/jslb_ajax.js" charset="utf-8"></script>
    <script type="text/javascript" src="//ydh312.cafe24.com/admin/js/duetDatePicker.js" charset="utf-8"></script>
    <script type="text/javascript" src="/ind-script/i18n.php?lang=ko_KR&amp;domain=admin&amp;v=2206021105" charset="utf-8"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_suio.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_ui.js" charset="utf-8"></script>

    <script src="/ind-script/optimizer.php?filename=tZTBTsMwDIYfgFx5jlCGEHcunHkDL3U3t4kdnATY25PCdtiksTUI5ZDI8fe7tuParQS03b3aQSHgh-hkFZMUdWjHZKl7YjOmW_ubX6EIbrLjW0Hd7beVeTR3C0n8zKgMPu0NxolMhH9VKeqbUjDozMDNKIsTHjy53CTRmYe6moLX2yx6Ureosqn8UXdTVOI8XHYsmfxlL-gDsX1BH5-lPxMeYrSvGEVz3U7Q-uHzRW17CLK08NGXDXGyDjxyD3ooRoXNwfYfkuAJ0qJceyC_O87423RtgRneaQOZhG2W2EAlXjdQAbncgJvPDfQAEyan4n1z6JLrRIXoMWOrRgqgeVsfKGqrxLr-k6rKdC3_0-cwD8T5Kbr-pWSYe_cF&amp;type=js&amp;k=f848396fb059e681b2916807d853bb59d80b8908&amp;t=1654150959"></script>
    
   
</body>

</html>