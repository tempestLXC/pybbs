<#macro topBar page_tab="">
<div class="header">
    <div class="wrap">
        <!--LOGO -->
        <div class="logo"><img src="/static/image/logo.png" /></div>
        <!--LOGO -->

        <!--导航 -->
        <div class="nav">
            <ul>
                <li <#if bar?? && bar == "index" >class="now"</#if>><a href="#">首页</a></li>
                <li <#if bar?? && bar == "article" >class="now"</#if>><a href="index_article.html">文章</a></li>
                <li <#if bar?? && bar == "product" >class="now"</#if>><a href="index_production.html">作品</a></li>
                <li <#if bar?? && bar == "stylist" >class="now"</#if>><a href="#">设计师</a></li>
                <li <#if bar?? && bar == "material" >class="now"</#if>><a href="#">素材</a></li>
            </ul>
        </div>
        <!--导航 -->

        <!--顶部右侧 -->
        <div class="header_right">

            <!--搜索 -->
            <div class="search">
                <input type="text" name="textfield" placeholder="输入内容" class="shuru"/><button></button>
                <div class="search_chose">
                    <ul>
                        <li>
                            <input name="radiobutton" type="radio" id="radio_a1" value="radiobutton" checked="checked" class="sousuo"/>
                            <label for="radio_a1"><i></i><span>内容</span></label>
                        </li>
                        <li>
                            <input name="radiobutton" type="radio" id="radio_a2" value="radiobutton" checked="checked" class="sousuo"/>
                            <label for="radio_a2"><i></i><span>设计师</span></label>
                        </li>
                    </ul>
                </div>
            </div>
            <!--搜索 -->


            <!--上传 -->
            <div class="upload">
                <a href="#"></a>
            </div>
            <!--上传 -->


            <!--消息 -->
            <div class="msg">
                <span></span>
                <em>1987</em>
            </div>
            <!--消息 -->


            <!--个人中心 -->
            <div class="user">
                <span class="user_pic"><a href="personal_production.html"><img src="/static/image/add/01.jpg" /></a></span>
                <dl>
                    <dd><i class="user01"></i><a href="#">我关注的</a></dd>
                    <dd><i class="user02"></i><a href="#">我上传的</a></dd>
                    <dd><i class="user03"></i><a href="#">我推荐的</a></dd>
                    <dd><i class="user04"></i><a href="#">我评论的</a></dd>
                    <dd><i class="user05"></i><a href="#">帐号设置</a></dd>
                    <dd><i class="user06"></i><a href="#">退出帐号</a></dd>
                </dl>
            </div>
            <!--个人中心 -->


            <!--登陆 -->
            <div class="login" <#if page_tab == 'user'> style="display:none;" </#if>>
                <a href="#" class="reg">登录</a>
                <a href="#">注册</a>
            </div>
            <!--登陆 -->


        </div>
        <!--顶部右侧 -->

    </div>
</div>
</#macro>