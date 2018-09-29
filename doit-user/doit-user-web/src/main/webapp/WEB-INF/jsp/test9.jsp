<%--
  Created by IntelliJ IDEA.
  User: wurim
  Date: 2018/9/13
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="theme-color" content="#009BAA" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

  <title>登录 | TapTap 发现好游戏</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="apple-itunes-app" content="app-id=1381319438">
  <meta name="csrf-token" content="pdUieUymtbI97Osi2hII9fDGsloak2aqLLMSmC5F">
  <meta name="cookie-domain" content="www.taptap.com">
  <meta name="tapad-lang" content="zh_CN">
  <meta name="tapad-store" content="cn">
  <meta name="lang" content="chs">

  <meta name="msvalidate.01" content="C12FFA5B4C661AB8C1E9F87AC3083C5D" />
  <meta name="baidu-site-verification" content="6IjfeOZ9ud" />
  <meta name="360-site-verification" content="bc27538a632d06a82201e38c43571cd9" />

  <meta name="apple-mobile-web-app-title" content="TapTap">

  <link rel="dns-prefetch" href="https://assets.tapimg.com">
  <link rel="dns-prefetch" href="https://video2.tapimg.com">
  <link rel="dns-prefetch" href="https://img.tapimg.com">
  <link rel="dns-prefetch" href="https://img2.tapimg.com">
  <link rel="dns-prefetch" href="https://img3.tapimg.com">
  <link rel="shortcut icon" href="/favicon.ico" />
  <link rel="apple-touch-icon" sizes="60x60"  href="https://assets.tapimg.com/img/touch-icon-iphone.png">
  <link rel="apple-touch-icon" sizes="76x76" href="https://assets.tapimg.com/img/touch-icon-ipad.png">
  <link rel="apple-touch-icon" sizes="120x120" href="https://assets.tapimg.com/img/touch-icon-iphone-retina.png">
  <link rel="apple-touch-icon" sizes="152x152" href="https://assets.tapimg.com/img/touch-icon-ipad-retina.png">


  <link href="css/base_2.css" rel="stylesheet">

  <style>
    #loginForm {
      position: static;
    }
    #loginForm .form-control {
      background-image: none;
      padding: 8px 10px 10px 60px;;
    }
    #loginForm .country-code {
      position: absolute;
      height: 32px;
      border: none;
      background-color: white;
      left: 2px;
      top: 2px;
    }
    #loginForm .get-phone-captcha {
      width: 100px;
      height: 32px;
      min-width: 0;
      position: absolute;
      right: 2px;
      top: 2px;
      padding: 6px 0;
      font-size: 14px;
      margin: 0;
      text-align: center;
    }
  </style>
  <link href="css/app-a7d74a0665_2.css" rel="stylesheet">
  <link rel="alternate" hreflang="zh-Hans-cn" href="https://www.taptap.com/auth/login">
  <link rel="alternate" hreflang="zh-Hant-hk" href="https://www.taptap.com/auth/login?region=hk">
  <link rel="alternate" hreflang="en-us" href="https://www.taptap.com/auth/login?region=us">
  <link rel="alternate" hreflang="ja-jp" href="https://www.taptap.com/auth/login?region=jp">
  <link rel="alternate" hreflang="ko-kr" href="https://www.taptap.com/auth/login?region=kr">
  <script>
    window.tapEnv = [{"user":{"id":null},"browser":{"inApp":false},"lang":"chs","tapad":{"lang":"zh_CN","store":"cn"}}].pop() || {};
  </script>
  <script src="js/base-e6962174a0_2.js"></script>
  <script src="js/jquery.qrcode.min_2.js"></script>

  <!--[if lt IE 9]>
  <script src="js/html5shiv.min_2.js"></script>
  <script src="js/respond.min_2.js"></script>
  <link rel="respond-proxy" id="respond-proxy" href="https://assets.tapimg.com/cross-domain/respond-proxy.html"/>
  <link rel="respond-redirect" id="respond-redirect" href="/build/cross-domain/respond.proxy.gif"/>
  <script src="js/respond.proxy_2.js"></script>
  <![endif]-->

  <script src="js/app-bfaff09c09_2.js"></script>
</head>

<body class="app-body

            pc
                        ">


<nav class="navbar navbar-default" id="navbar">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-taptap-slide="nav" data-target="#navbarSlide"
              aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="https://www.taptap.com">
        <img src="picture/logo_new_2.png" alt="TapTap" title="TapTap">
      </a>
      <a href="https://www.taptap.com/mobile" class="navbar-header-xz">
        <i class="taptap-icon icon-mobile"></i>
        <i class="taptap-icon icon-mobile-download"></i>
        <span>App</span>
      </a>
    </div>
    <div class="navbar-collapse" id="navbarSlide">
      <div class="narbar-collapse-btn">
        <button class="btn btn-default" data-taptap-slide="nav" data-target="#navbarSlide" type="button">
          <i class="taptap-icon icon-arrow-left"></i>
        </button>
      </div>
      <div class="navbar-collapse-form">
        <form class="navbar-form" role="search" method="get"
              action="https://www.taptap.com/search">
          <button type="submit" class="btn btn-default">
            <i class="taptap-icon icon-search"></i>
          </button>
          <div class="form-group">
            <input type="search" class="form-control" id="search-kw" name="kw" value=""
                   placeholder="搜索...">
          </div>
        </form>
      </div>
      <ul class="nav navbar-nav navbar-left">
        <li >
          <a href="https://www.taptap.com">首页</a>
        </li>
        <li >
          <a href="https://www.taptap.com/top/download">排行榜</a>
        </li>
        <li >
          <a href="https://www.taptap.com/review/new">安利墙</a>
        </li>
        <li >
          <a href="https://www.taptap.com/categories">发现</a>
        </li>
        <li >
          <a href="https://www.taptap.com/forum/groups">论坛</a>
        </li>
    </div>
    <div class="navbar-mask" data-taptap-slide="nav" data-target="#navbarSlide"></div>
    <form class="navbar-form" id="search" role="search" method="get"
          action="https://www.taptap.com/search">
      <button type="submit" class="btn btn-default">
        <i class="taptap-icon icon-search"></i>
      </button>
      <div class="form-group">
        <input type="search" class="form-control js-emit search-input"
               tap-event="click:search.show,change:search.apps,keydown:search.keydown"
               autocomplete="off"
               id="search-kw" name="kw" value=""
               placeholder="搜索...">
      </div>
      <div class="taptap-search">
        <div class="supports">
          <section class="history">
            <header>
              历史搜索
                <span class="clear-history">
                    <button class="js-emit" tap-event="search.clear-history" type="button">清空</button>
                </span>
            </header>
            <div class="list">
              <ul class="list-unstyled">
                <li class="loading">
                  <img src="picture/0e6e0f46d7504242302bc8055ad9c8c2_2.gif"
                       alt="loading"/>
                </li>
              </ul>
            </div>
          </section>
          <section class="hot-word">
            <header>热门搜索</header>
            <div class="list">
              <ul class="list-unstyled">
              </ul>
            </div>
          </section>
          <section class="results hide">
            <div class="loading">
              <img src="picture/0e6e0f46d7504242302bc8055ad9c8c2_2.gif" alt="loading"/>
            </div>
          </section>    </div>
      </div>                    </form>
    <button class="navbar-search btn btn-default js-emit" tap-event="search.show" data-taptap-nav="search"
            type="button">
      <i class="taptap-icon icon-search-white"></i>
    </button>
    <ul class="nav navbar-nav navbar-right">
      <li class="dropdown navbar-notice hide">
        <button id="taptap-notification" class="btn btn-default taptap-notice-bell" data-taptap-ajax="notification"
                data-message-total="条新消息" data-toggle="dropdown" type="button"
                data-unread="0"
                data-get-unread-total-url="https://www.taptap.com/ajax/notification/un-read-total"
                data-url="https://www.taptap.com/ajax/notification"
                onclick="ga('send','event','Topbar','Notification','MenuExpand')">
          <i></i>
        </button>                <div class="taptap-notice-widget dropdown-menu" id="ajaxNotifications">
        <div class="notice-widget-loading" data-taptap-ajax-notification="loading">
          <img src="picture/0e6e0f46d7504242302bc8055ad9c8c2_2.gif" alt="">
        </div>
      </div>
        <span class="taptap-notice-triangle" data-taptap-ajax-notification="triangle"></span>            </li>
      <li class="dropdown navbar-user">
        <a href="https://www.taptap.com/auth/register" class="dropdown-toggle img-circle"
           rel="nofollow" data-toggle="dropdown" role="button"
           aria-haspopup="true" aria-expanded="false">
          <img src="picture/22f1196f825298281376608459bfa7fe_2.png" alt="">
        </a>
        <input type="hidden" value="个人中心" id="dashboard">
        <input type="hidden" value="我的关注" id="my_following">
        <input type="hidden" value="我的收藏" id="my_collections">
        <input type="hidden" value="我的订单" id="my_orders">
        <input type="hidden" value="开发者中心" id="developer_center">
        <input type="hidden" value="登出" id="logout">
      </li>
    </ul>
  </div>
</nav>

<section class="taptap-breadcrumb">
  <div class="container">
    <div class="row">
      <ol class="breadcrumb">
        <li><span>你的位置:</span></li>
        <li><a href="https://www.taptap.com">首页</a></li>

        <li><a href="https://www.taptap.com/auth/login">登录</a></li>
        <li class="active"><span>手机登录</span></li>
        <span class="breadcrumb-end"></span>
      </ol>
    </div>
  </div>
</section>

<div class="container">
  <div class="row">
    <div class="col-sm-12">
      <section class="auth-main">
        <div class="auth-main-body login">
          <h1 class="auth-main-title">登录</h1>
          <div class="main-body-header">
            <p>
              <span>即刻加入游戏狂热者行列</span>
            </p>
          </div>
          <div class="main-body-login">
            <div class="login-register-nav">
              <div class="login-register-nav">
                <ul class="nav nav-pills taptap-pills-nav">
                  <li role="presentation" class="active"><span class="no-link">手机号码</span></li>
                  <li role="presentation" ><a href="https://www.taptap.com/auth/email/login">邮箱</a></li>
                </ul>
              </div>
            </div>
            <div class="phone-register">
              <form class="phone-captcha-form" role="form" action="https://www.taptap.com/auth/login" method="post">
                <input type="hidden" name="_token" value="pdUieUymtbI97Osi2hII9fDGsloak2aqLLMSmC5F">
                <div class="form-group">
                  <div class="dropdown" id="select-country-code">
                    <a class="btn btn-default" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <span class="text">CN+86</span>
                      <span class="caret"></span>
                    </a>

                    <input type="hidden" name="country_code" value="86">
                  </div>
                  <input type="tel"
                         name="phone" class="phone-number"
                         placeholder="输入手机号码"
                         value=""
                         autocomplete="off"
                         required>
                  <p class="help-block error"><span>!</span> <span class="error-tip"></span></p>
                </div>
                <div class="help-block">
                  <p class="pull-right"><a href="https://www.taptap.com/auth/register" class="go-register-link">没有账号? 去注册&gt;</a></p>
                </div>
                <button tap-action="login" type="button" class="get-phone-captcha btn btn-primary btn-block" disabled>获取验证码</button>
              </form>
            </div>
            <div class="third-account">
              <div class="third-account-tip">
                <span>社交账号登录</span>
              </div>
              <div class="third-account-wrapper">
                <div class="third-account-wrapper-item">
                  <a href="https://www.taptap.com/social/weixinweb/connect"
                     class="weixin">
                    <div class="icon-font ic_weixin"></div>
                    <span>微信</span>
                  </a>
                </div>
                <div class="third-account-wrapper-item">
                  <a href="https://www.taptap.com/social/qq/connect"
                     class="qq">
                    <div class="icon-font ic_qq"></div>
                    <span>QQ</span>
                  </a>
                </div>
                <div class="third-account-wrapper-item">
                  <a href="https://www.taptap.com/social/facebook/connect"
                     class="facebook">
                    <div class="icon-font ic_facebook"></div>
                    <span>Facebook</span>
                  </a>
                </div>
                <div class="third-account-wrapper-item">
                  <a href="https://www.taptap.com/social/line/connect"
                     class="line">
                    <div class="icon-font ic_line"></div>
                    <span>Line</span>
                  </a>
                </div>
                <div class="third-account-wrapper-item">
                  <a href="https://www.taptap.com/social/google/connect"
                     class="google">
                    <div class="icon-font ic_google"></div>
                    <span>Google</span>
                  </a>
                </div>
              </div>
              <p class="third-account-btn"><span class="more-login">更多方式</span><span
                      class="pack-up-login">收起</span><span
                      class="icon-font icon-arrow-down"></span></p>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</div>

<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 clearfix">
        <div class="pull-right">
          <p>Contact Us</p>
          <ul class="list-inline">
            <li>
              <a class="icon-font ic_facebook" href="https://www.facebook.com/gametaptap/" target="_blank" title="Facebook" rel="nofollow"></a>
            </li>
            <li>
              <span class="icon-font ic_wechat" title="微信"></span>
              <div>
                                <span class="thumbnail">
                                    <img src="picture/c4bf2701e3ee9993e1ee0b8222480a35_2.jpg" alt="">
                                </span>
              </div>
            </li>
            <li>
              <span class="icon-font ic_qq" title="QQ"></span>
              <div>
                <span class="thumbnail">官方QQ群: 464104672</span>
              </div>
            </li>
            <li>
              <a class="icon-font ic_zhihu" href="https://zhuanlan.zhihu.com/taptap" target="_blank" title="知乎" rel="nofollow"></a>
            </li>
            <li>
              <a class="icon-font ic_sina" href="http://weibo.com/taptapgames" target="_blank" title="微博" rel="nofollow"></a>
            </li>
            <li>
              <span class="icon-font ic_mail" title="邮箱"></span>
              <div>
                                <span class="thumbnail">
                                    合作邮箱: <a href="mailto:cooperation@taptap.com" rel="nofollow">cooperation@taptap.com</a>
                                </span>
              </div>
            </li>
          </ul>
        </div>
        <div class="footer-left">
          <div class="footer-left-header">
            <span class="left-header-logo icon-font icon-logo"></span>
            <div class="dropdown">
              <button id="regionSelect" type="button" class="btn btn-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                中文 (简体)
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="regionSelect">
                <li><span class="dropdown-tips">选择语言</span></li>
                <li class=active>
                  <a href="https://www.taptap.com/auth/login?region=cn" rel="nofollow">中文 (简体)</a>
                </li>
                <li >
                  <a href="https://www.taptap.com/auth/login?region=hk" rel="nofollow">中文 (繁體)</a>
                </li>
                <li >
                  <a href="https://www.taptap.com/auth/login?region=us" rel="nofollow">English</a>
                </li>
                <li >
                  <a href="https://www.taptap.com/auth/login?region=jp" rel="nofollow">日本語</a>
                </li>
                <li >
                  <a href="https://www.taptap.com/auth/login?region=kr" rel="nofollow">한국어</a>
                </li>
              </ul>
                            <span class="link">
                                <a href="https://www.taptap.com/developer" rel="nofollow">开发者中心</a>
                            </span>
                                                        <span class="link">
                                <a href="https://www.taptap.com/ads" rel="nofollow">广告投放</a>
                            </span>
                            <span class="link">
                                <a href="https://www.taptap.com/about-us" rel="nofollow">关于我们</a>
                            </span>
                            <span class="link">
                                <a href="https://www.taptap.com/hr" rel="nofollow">加入我们</a>
                            </span>
            </div>
          </div>
          <p>Discover Superb Games.</p>
                    <span>
                        <span>Copyright © 2018 <a href="https://www.taptap.com">TapTap</a>. All rights Reserved.</span>
                                                <br>
                        <span>适龄提示：本公司产品适合10周岁以上玩家使用</span>
                        <span>&nbsp;&nbsp;<a href="https://www.taptap.com/taptapjh" target="_blank" rel="nofollow">未成年人家长监护</a>&nbsp;&nbsp;<a href="https://www.taptap.com/privacy-policy" rel="nofollow">隐私权和条款</a></span>
                        <br>
                        <span>
                            <a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">沪ICP备16012525号-1</a>&nbsp;&nbsp;沪网文(2016)2204-116号&nbsp;&nbsp;
                        </span>
                        <br>
                        <span class="jingying">经营许可证编号：沪B2-20170322</span>易玩（上海）网络科技有限公司
                        <br>
                        <span class="beian">
		 		            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010402003255">
                              <img src="picture/d0289dc0a46fc5b15b3363ffa78cf6c7_2.png" />
                              <p>
                                沪公网安备 31010402003255号
                              </p>
                            </a>
		 	            </span>
		 	                                </span>
        </div>
      </div>
    </div>
  </div>
</footer>


<section class="taptap-button-top" data-taptap-widgets="container" data-taptap-go="top">
  <i class="icon-font ic_prev"></i>
</section>                        <section class="modal fade taptap-modal login-tips" tabindex="-1" role="dialog" aria-labelledby="loginTipsModal" id="loginTipsModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">温馨提示</h4>
      </div>
      <div class="modal-body">
        <p>请先<a href="/auth/login">登录</a>后，再进行操作</p>
      </div>
    </div>
  </div>
</section>
<section class="modal fade taptap-modal taptap-alert" tabindex="-1" role="dialog" aria-labelledby="image-captcha"
         id="image-captcha">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title">请输入验证码</h4>
      </div>
      <div class="modal-body">
        <div class="captcha text-center">
          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
               class="image"/>
        </div>
        <div class="input text-center">
          <input type="hidden" class="key"/>
          <input class="form-control code" type="text" placeholder="输入上图显示数字"/>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary enter">确定</button>
        <button class="btn btn-default" data-dismiss="modal">取消</button>
      </div>
    </div>
  </div>
</section>
<section class="modal fade taptap-modal phone-captcha-modal" tabindex="-1" role="dialog"  aria-labelledby="phoneCaptcha" id="phoneCaptcha">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-content">
        <h5>请输入短信验证码</h5>
        <div id="phone-captcha" class="phone-captcha">
          <input type="text" maxlength="1" autofocus required
                 autocomplete="off" />
          <input type="text" maxlength="1" required autocomplete="off" />
          <input type="text" maxlength="1" required autocomplete="off" />
          <input type="text" maxlength="1" required autocomplete="off" />
          <input type="text" maxlength="1" required autocomplete="off" />
          <input type="text" maxlength="1" required autocomplete="off" />
        </div>
        <div class="loading"><img src="picture/0e6e0f46d7504242302bc8055ad9c8c2_2.gif" alt="loading"></div>
        <div class="error"></div>
      </div>
      <div class="modal-footer">
        <div class="code-tip" data-taptap-has-send="true">
          <p>短信验证码已发送至<span id="phone-number">+86xxxxxxxxxxxx</span></p>
          <p><span id="count" class="count">59</span>&nbsp;秒后可重新发送</p>
        </div>
        <div class="code-tip" data-taptap-has-send="false">
          <p class="send-again-container">
            <span class="send-loading"><img src="picture/0e6e0f46d7504242302bc8055ad9c8c2_2.gif" alt="loading"></span>
            <span id="send-again" class="count" tap-event="sendPhoneCaptcha">重新发送</span>
          </p>
        </div>
      </div>
    </div>
  </div>
</section>            <script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function () {
              (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
    a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

  ga('create', 'UA-73963350-1', 'auto');

  var browserName = "Other";
  var ua = window.navigator.userAgent;
  browserRegExp = {
    iOSSDK: /TapTapiOSSDK/,
    AndroidSDK: /TapTapAndroidSDK/,
    Sogou: /SE\s2\.X|SogouMobileBrowser/,
    Explorer2345: /2345Explorer|2345chrome|Mb2345Browser/,
    Liebao: /LBBROWSER/,
    Wechat: /MicroMessenger/,
    QQBrowser: /QQBrowser/,
    Baidu: /BIDUBrowser|baidubrowser|BaiduHD/,
    UC: /UBrowser|UCBrowser|UCWEB/,
    MiuiBrowser: /MiuiBrowser/,
    MobileQQ: /Mobile\/\w{5,}\sQQ\/(\d+[\.\d]+)/,
    Shoujibaidu: /baiduboxapp/,
    SamsungBrowser: /samsungbrowser/,
    Firefox: /Firefox/,
    Maxthon: /Maxthon/,
    Se360: /360SE/,
    Ee360: /360EE/,
    TheWorld: /TheWorld/,
    Weibo: /__weibo__/,
    NokiaBrowser: /NokiaBrowser/,
    Opera: /Opera|OPR\/(\d+[\.\d]+)/,
    Edge: /Edge/,
    QQLive: /QQLive(HD)?Browser/,
    Letv: /LetvClient/,
    Youku: /Youku/,
    AndroidBrowser: /Android.*Mobile\sSafari|Android\/(\d[\.\d]+)\sRelease\/(\d[\.\d]+)\sBrowser\/AppleWebKit(\d[\.\d]+)/i,
    IE: /Trident|MSIE/,
    TouTiao: /NewsArticle/,
    Chrome: /Chrome|CriOS/,
    Safari: /Version[|\/]([\w.]+)(\s\w.+)?\s?Safari|like\sGecko\)\sMobile\/\w{3,}$/,
  };

  if (document.body && document.body.classList && document.body.classList.contains('chrome-mouse')) {
    browserName = "InApp";
  } else {
    for (var i in browserRegExp) {
      if (browserRegExp[i].exec(ua)) {
        browserName = i;
        break;
      }
    }
  }

  if (browserName === "Other") {
    ga('set', 'dimension2', browserName + "-" + ua);
  } else {
    ga('set', 'dimension1', browserName);
  }

  ga('send', 'pageview');
</script>


<script>
  (function () {
    //seo-5-22 处理
    var path = location.pathname;
    var pushQueryParamsData = {
      'app.review': '/app/{id}/review',
      'forum.g': '/forum/g{id}',
      'categories.category': '/category/{id}',
      'events.event': '/event/{id}',
      'hot.item': '/hot/{id}'
    };
    var tapUri = new Tap.URI();

    function filterPushUri(path) {
      if (path) {
        for (var i in pushQueryParamsData) {
          if (pushQueryParamsData[i] == path) {
            return i;
          }

          var pattern = pushQueryParamsData[i].replace(/{id}/, '\\w+');
          pattern = '^' + pattern + '$';
          if ((new RegExp(pattern)).test(path)) {
            return i;
          }
        }
      }
      return null;
    }

    if (filterPushUri(path) && !$.isEmptyObject(tapUri.getQueryParams())) {
      //uri has queryParams no push
      return
    }

    if ((new RegExp('^/forum\\/a[0-9]+$')).test(path)) {
      return
    }

    if ($('.bd-no-push').length) {
      return
    }
    // End
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
      bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    }
    else {
      bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);

    var referrer = document.referrer;
    var bdUri;
    var bdsem;
    if (referrer) {
      bdUri = new Tap.URI(referrer);
      bdsem = bdUri.parse();
    }

    if ((tapUri.get('utm_source') == 'baidu' || tapUri.get('utm_medium') == 'sem' || (bdsem !== undefined && bdsem['path'] == 'baidu.php'))
            && Tap.browser.is('mobile')) {

      var state = {
        title: 'TapTap',
        url: '#'
      };

      window.history.pushState(state, "TapTap", '#');
      window.addEventListener('popstate', function popstate(e) {
        let newUri = new Tap.URI();
        if (newUri.get('utm_source') == 'baidu' || newUri.get('utm_medium') == 'sem') {
          window.removeEventListener('popstate', popstate, false);
          location.assign('/');
        }
      }, false);


    }
  })();
</script>

<script>
  (function(para) {
    var p = para.sdk_url, n = para.name, w = window, d = document, s = 'script',x = null,y = null;
    w['sensorsDataAnalytic201505'] = n;
    w[n] = w[n] || function(a) {return function() {(w[n]._q = w[n]._q || []).push([a, arguments]);}};
    var ifs = ['track','quick','register','registerPage','registerOnce','trackSignup', 'trackAbtest', 'setProfile','setOnceProfile','appendProfile', 'incrementProfile', 'deleteProfile', 'unsetProfile', 'identify','login','logout','trackLink','clearAllRegister','getAppStatus'];
    for (var i = 0; i < ifs.length; i++) {
      w[n][ifs[i]] = w[n].call(null, ifs[i]);
    }
    if (!w[n]._t) {
      x = d.createElement(s), y = d.getElementsByTagName(s)[0];
      x.async = 1;
      x.src = p;
      x.setAttribute('charset','UTF-8');
      y.parentNode.insertBefore(x, y);
      w[n].para = para;
    }
  })({
    sdk_url: 'https://assets.tapimg.com/scripts/sensorsdata.min.js',
    heatmap_url: 'https://assets.tapimg.com/scripts/heatmap.min.js',
    name: 'sa',
    web_url: 'https://sa.taptap.com/',
    server_url: 'https://sd.taptap.com/sa',
    heatmap:{},
    show_log: false
  });
  var user_id = $('meta[name=user_id]').attr('content');
  if (user_id) {
    sa.login(user_id)
  } else {
    sa.logout();
  }
  sa.quick('autoTrack');
</script>
</body>
</html>

