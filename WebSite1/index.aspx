<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <!-- 基础信息 -->
    <meta charset="utf-8">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="force-rendering" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="夏祎"/>
    <meta name="keywords" content="夏祎"/>
    <meta name="author" content="夏祎"/>
    <title>夏祎</title>
    <!-- jQuery -->
    <script src="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/jquery/3.5.1/jquery.min.js"></script>
    <!-- 引入样式 -->
    <link rel="stylesheet" type="text/css"
        href="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <link rel="stylesheet" type="text/css" href="CSS/mobile.css">
    <link rel="stylesheet" type="text/css" href="CSS/font.css">
    <link rel="stylesheet" type="text/css" href="CSS/loading.css">
    <link rel="stylesheet" type="text/css" href="CSS/animation.css">
    <link rel="stylesheet" type="text/css" href="CSS/cursor.css">
    <link rel="icon" href="./favicon.ico">
    <link rel="apple-touch-icon" href="./img/icon/apple-touch-icon.png">
    <!-- Izitoast -->
    <link rel="stylesheet" href="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/izitoast/1.4.0/css/iziToast.min.css">
    <script type="text/javascript"
        src="https://lf26-cdn-tos.bytecdntp.com/cdn/expire-1-M/izitoast/1.4.0/js/iziToast.min.js">
    </script>
    <!-- Aplayer -->
    <link rel="stylesheet" href="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/aplayer/1.10.1/APlayer.min.css"
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/aplayer/1.10.1/APlayer.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
    <!-- IE Out -->
    <script>
        if ( /*@cc_on!@*/ false || (!!window.MSInputMethodContext && !!document.documentMode)) window.location.href =
            "/upgrade-your-browser/index.html?referrer=" + encodeURIComponent(window.location.href);
    </script>
    
</head>

<body>
    <section id="section" class="section">
        <!--主体内容-->
        <main id="main" class="main">
            <div class="container" id="container">
                <div class="row" id="row">
                    <div class="col left">
                        <!--基本信息-->
                        <div class="main-left">
                            
                            <!--介绍信息-->
                            <div class="message cards" id="switchmore">
                                <div class="des" id="des"><i class="iconfont icon-yinhao-copy-copy"></i>
                                    <div class="des-title"><span id="change">Hello&nbsp;World&nbsp;!</span><br /><span
                                            id="change1">默默无闻的首页</span></div>
                                    <i class="iconfont icon-yinhao-copy"></i>
                                </div>
                            </div>
                            <!--社交链接-->
                            <div class="social" id="social">
                               
                                <a href="https://user.qzone.qq.com/624117745?source=aiostar" class="link"
                                    id="qq" target="_blank">
                                    <i class="iconfont icon-QQ"></i>
                                </a>
                                <a href="mailto:624117745@qq.com" class="link" id="email">
                                    <i class="iconfont icon-youxiang"></i>
                                </a>
                                <a id="link-text">通过这里联系我</a>
                            </div>
                        </div>
                    </div>
                    <!--第二屏 Logo-->
                    <div class="logo cards" style="display: none" id="changemore">
                        <a class="logo-text">czidc.vip</a>
                    </div>
                    <div class="col right">
                        <div class="main-right">
                            <!--功能区-->
                        
                                <div class="col times">
                                    <!--时间-->
                                    <div class="time cards">
                                        <div class="timeshow" id="time">
                                            2000&nbsp;年&nbsp;0&nbsp;月&nbsp;00&nbsp;日&nbsp;<span
                                                class="weekday">星期一</span><br><span class="time-text">00:00:00</span>
                                        </div>
                                        <div class="weather">
                                            <span id="city_text">天气</span>&nbsp;
                                            <span id="wea_text">加载失败</span>&nbsp;
                                            <span id="tem_night"></span>°C~
                                            <span id="tem_day"></span>°C
                                            
                                        </div>
                                    </div>
                                </div>
                            
                            <!--分隔线-->
                            <div class="line">
                                <i class="iconfont icon-link"></i>
                                <span class="line-text">网站列表</span>
                            </div>
                            <!--网站链接-->
                            <div class="link">
                                <!--第一组-->
                                <div class="row">
                                   
                                    <div class="col2">
                                        <a href ="PersonManage.aspx" target="_blank">
                                            <div class="link-card cards">
                                                
                                                <span class="link-name">人员管理</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col2">
                                        <a href="News.aspx" target="_blank">
                                            <div class="link-card cards">
                                                
                                                <span class="link-name">新闻管理</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <!--第二组-->
                                <div class="row" style="margin-top: 1.5rem;">
                                    <div class="col2">
                                        <a href="Files.aspx" target="_blank">
                                            <div class="link-card cards">
                                               
                                                <span class="link-name">文件管理</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col2">
                                        <a href="login.aspx" target="_blank">
                                            <div class="link-card cards">
                                                
                                                <span class="link-name">返回</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--展开菜单按钮-->
                <div class="menu" id="switchmenu">
                    <a class="munu-button cards" id="menu"><i class="iconfont icon-bars"></i></a>
                </div>
                <!--更多内容-->
                <div class="more" id="more">
                    <!--关闭按钮-->
                    <div class="close fixed-top" id="close">
                        <i class="iconfont icon-close"></i>
                    </div>
                    <div class="line" style="margin-top: 1rem;">
                        <i class="iconfont icon-right-copy"></i>
                        <span class="line-text">天空之城</span>
                        <i class="iconfont icon-right"></i>
                    </div>
                    <div class="date" id="date">
                        <div class="item" id="dayProgress">
                            <div class="date-text" style="margin-top: 0rem;">今日已经度过了&nbsp;<span></span>&nbsp;小时</div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                        </div>
                        <div class="item" id="weekProgress">
                            <div class="date-text">本周已经度过了&nbsp;<span></span>&nbsp;天</div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                        </div>
                        <div class="item" id="monthProgress">
                            <div class="date-text">本月已经度过了&nbsp;<span></span>&nbsp;天</div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                        </div>
                        <div class="item" id="yearProgress">
                            <div class="date-text">今年已经度过了&nbsp;<span></span>&nbsp;个月</div>
                            <div class="progress">
                                <div class="progress-bar"></div>
                            </div>
                        </div>
                    </div>
                    <div class="line">
                        <i class="iconfont icon-right-copy"></i>
                        <span class="line-text">其他</span>
                        <i class="iconfont icon-right"></i>
                    </div>
                    <!--网站链接-->
                    <div class="row">
                        <div class="col">
                            <a href="http://www.hgnu.edu.cn/" target="_blank">
                                <div class="link-card cards">
                                  
                                    <span class="link-name">我的学校</span>
                                </div>
                            </a>
                        </div>
                        <div class="col 2">
                            <a href="" target="_blank">
                                <div class="link-card cards">
                                  
                                    <span class="link-name">学习笔记</span>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="" target="_blank">
                                <div class="link-card cards">
                                    <span class="link-name">恋爱经历</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!--更多页面-->
                <div class="box" id="box" style="display: none">
                    <div class="box-wrapper">
                        <!--关闭按钮-->
                        <div class="closebox fixed-top" id="closemore">
                            <i class="iconfont icon-close"></i>
                        </div>
                        <!--左侧内容-->
                        <div class="box-left">
                            <div class="img-title">
                                <span class="img-title">czmz.top</span>
                                <span class="img-text">.top</span><br />
                                <span class="img-text">&nbsp;&nbsp;v&nbsp;2.2</span>
                                <a href="" target="_blank"><i
                                        class=""></i></a>
                            </div>
                            
                        </div>
                        <!--Aplayer-->
                        <div class="box-right">
                            <div id="aplayer"></div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        
    </section>
    <!-- noscript -->
    <noscript>
        <div class="noscript fixed-top">请开启 JavaScript</div>
    </noscript>
    <!-- JS -->
    <script type="text/javascript" src="JS/main.js"></script>
    <script type="text/javascript" src="JS/time.js"></script>
    <script type="text/javascript" src="JS/js.cookie.js"></script>
    <script type="text/javascript" src="JS/set.js"></script>
    <script type="text/javascript" src="JS/cursor.js"></script>
    <script type="text/javascript"
        src="https://lf9-cdn-tos.bytecdntp.com/cdn/expire-1-M/bootstrap/5.1.0/js/bootstrap.min.js">
    </script>
</body>

</html>
